from django.shortcuts import render
from penagos_app.models import Palabra
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
from penagos_app.models import Fortnite, ResidentEvil
import nltk


# Create your views here.
nltk.download('punkt')  # Descarga los recursos necesarios para el tokenizador de NLTK

def chatbot_view(request):
    if request.method == 'POST':
        user_input = request.POST.get('user_input', '')
        
        try:
            palabra_aprendida = Palabra.objects.get(palabra=user_input.lower())
            respuesta = palabra_aprendida.respuesta

        except Palabra.DoesNotExist:
            if user_input.lower() == 'fortnite':
                respuesta = "Fortnite es un juego popular lanzado en 2018."

            elif user_input.lower() == 'cuándo salió fortnite':
                respuesta = "Fortnite fue lanzado el 25 de julio de 2017."

            else:
                respuesta = "Lo siento, no puedo responder esa pregunta."

            palabra = Palabra(palabra=user_input.lower(), respuesta=respuesta)
            palabra.save()

        nltk.download('punkt')  # Descarga los recursos necesarios para la tokenización

        tokens = word_tokenize(user_input)  # Tokeniza la pregunta en palabras individuales
        print(tokens)

        if user_input.lower() == 'fortnite':
            try:
                fortnite = Fortnite.objects.get(nombre='Fortnite')
                respuesta = f"Fortnite es un juego popular con las siguientes características: {fortnite.descripcion}"
            except Fortnite.DoesNotExist:
                respuesta = "No encontré información sobre Fortnite en la base de datos."

        elif user_input.lower() == 'resident evil':
            try:
                resident_evil = ResidentEvil.objects.get(nombre='Resident Evil')
                respuesta = f"Resident Evil es una serie de juegos de terror con las siguientes características: {resident_evil.descripcion}. Fecha de lanzamiento: {resident_evil.lanzamiento}, Plataforma: {resident_evil.plataforma}, Género: {resident_evil.genero}"
            except ResidentEvil.DoesNotExist:
                respuesta = "No encontré información sobre Resident Evil en la base de datos."

        else:
            respuesta = "Lo siento, no puedo responder esa pregunta."

        return render(request, 'chatbot.html', {'respuesta': respuesta})
    
    return render(request, 'chatbot.html')