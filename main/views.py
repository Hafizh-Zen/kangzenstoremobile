from django.shortcuts import render, redirect   # Add import redirect at this line
from main.forms import MoodEntryForm
from main.models import MoodEntry
from django.http import HttpResponse
from django.core import serializers

def show_main(request):
    mood_entries = MoodEntry.objects.all()

    context = {
        'name': 'Adudu',
        'price': '20000',
        'description': 'He is very trusted as he worked for 2 days and 4 hours, also has very good internet',
        'rating': '4',
        'desc1': 'We offer SOME services', 
        'desc2': 'Our employees are professional players with years of experience. We offer fast and secure boosting with guaranteed results.', 
        'desc3': 'KANGZEN@bismillah.com', 
        'desc4': 'Boost with us and get the rank you deserve!', 
        'desc5': 'joki siak ng', 
        'nameuser': 'Hafizh Surya Mustafa Zen',
        'npmuser': '2306256343',
        'classuser': 'KKI CSGE602022 Platform-Based Programming',
        'mood_entries': mood_entries
    }


    return render(request, "main.html", context)

def create_mood_entry(request):
    form = MoodEntryForm(request.POST or None)

    if form.is_valid() and request.method == "POST":
        form.save()
        return redirect('main:show_main')

    context = {'form': form}
    return render(request, "create_mood_entry.html", context)

def show_xml(request):
    data = MoodEntry.objects.all()

def show_xml(request):
    data = MoodEntry.objects.all()
    return HttpResponse(serializers.serialize("xml", data), content_type="application/xml")

def show_json(request):
    data = MoodEntry.objects.all()

def show_json(request):
    data = MoodEntry.objects.all()
    return HttpResponse(serializers.serialize("json", data), content_type="application/json")


def show_xml_by_id(request, id):
    data = MoodEntry.objects.filter(pk=id)
    return HttpResponse(serializers.serialize("xml", data), content_type="application/xml")

def show_json_by_id(request, id):
    data = MoodEntry.objects.filter(pk=id)
    return HttpResponse(serializers.serialize("json", data), content_type="application/json")

