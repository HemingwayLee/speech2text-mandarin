# from Speech_and_Text import speech_to_text_cmu
import speech_recognition as sr

r = sr.Recognizer()
with sr.WavFile("wav/wav_000.wav") as source:
    audio = r.record(source)
try:
    print("Transcription: " + r.recognize_sphinx(audio, language='zh-CN'))
except:
    print("Could not understand audio")

