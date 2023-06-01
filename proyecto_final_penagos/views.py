from django.shortcuts import render
from penagos_app.models import Palabra, ResidentEvil, Fortnite, Videojuegos
from nltk.tokenize import word_tokenize
import nltk

nltk.download('punkt')  # Descarga los recursos necesarios para el tokenizador de NLTK

def chatbot_view(request):
    if request.method == 'POST':
        user_input = request.POST.get('user_input', '')

        try:
            palabra_aprendida = Palabra.objects.get(palabra=user_input.lower())
            respuesta = palabra_aprendida.respuesta

        except Palabra.DoesNotExist:
            respuesta2 = "desconozco lo que preguntaste"
            tokens = word_tokenize(user_input)

            # Buscar coincidencias en la tabla Fortnite
            coincidencias_fortnite = Fortnite.objects.filter(nombre__icontains=user_input.lower())

            # Buscar coincidencias en la tabla ResidentEvil
            coincidencias_resident_evil = ResidentEvil.objects.filter(nombre__icontains=user_input.lower())

            # Buscar coincidencias en la tabla Videojuegos
            coincidencias_videojuegos = Videojuegos.objects.filter(nombre__icontains=user_input.lower())

            if coincidencias_fortnite:
                respuesta = f"¡Encontré coincidencias en '{user_input}' para tu pregunta! Aquí hay algunos resultados:\n"
                for coincidencia in coincidencias_fortnite:
                    respuesta += f"Nombre: {coincidencia.nombre}\n"
                    respuesta += f"Descripción: {coincidencia.descripcion}\n\n"

            elif coincidencias_resident_evil:
                respuesta = f"¡Encontré coincidencias en '{user_input}' para tu pregunta! Aquí hay algunos resultados:\n"
                for coincidencia in coincidencias_resident_evil:
                    respuesta += f"Nombre: {coincidencia.nombre}\n"
                    respuesta += f"Género: {coincidencia.genero}\n"
                    respuesta += f"Plataforma: {coincidencia.plataforma}\n"
                    respuesta += f"Lanzamiento: {coincidencia.lanzamiento}\n"
                    respuesta += f"Descripción: {coincidencia.descripcion}\n\n"

            elif coincidencias_videojuegos:
                respuesta = f"¡Encontré coincidencias en '{user_input}' para tu pregunta! Aquí hay algunos resultados:\n"
                for coincidencia in coincidencias_videojuegos:
                    respuesta += f"Nombre: {coincidencia.nombre}\n"
                    respuesta += f"Género: {coincidencia.genero}\n"
                    respuesta += f"Plataforma: {coincidencia.plataforma}\n"
                    respuesta += f"Lanzamiento: {coincidencia.lanzamiento}\n"
                    respuesta += f"Descripción: {coincidencia.descripcion}\n\n"

            else:
                # No se encontraron coincidencias en las tablas de videojuegos
                respuesta = respuesta2

                # Obtener sugerencias de palabras en la tabla Palabra
                sugerencias = Palabra.objects.filter(palabra__icontains=user_input.lower()).values_list('palabra', flat=True)
                if sugerencias:
                    respuesta += "¿Quisiste decir alguna de estas palabras?\n"
                    respuesta += "\n".join(sugerencias)

                # Guardar la palabra ingresada en la tabla Palabra
                palabra = Palabra(palabra=tokens, respuesta=respuesta2)
                palabra.save()

        return render(request, 'chatbot.html', {'respuesta': respuesta})

    return render(request, 'chatbot.html')
