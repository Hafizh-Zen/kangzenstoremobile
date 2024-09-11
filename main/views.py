from django.shortcuts import render

def show_main(request):
    context = {
        'name' : 'Adudu',
        'price' : '20000',
        'description' : 'He is very trusted as he worked for 2 days and 4 hours, also has very good internet',
        'rating' : '4',
        'desc1' : 'We offer SOME services', 
        'desc2' : 'Our employees are professional players with years of experience. We offer fast and secure boosting with guaranteed results.', 
        'desc3' : 'KANGZEN@bismillah.com', 
        'desc4' : 'Boost with us and get the rank you deserve!', 
        'desc5' : 'joki siak ng', 
    }

    return render(request, "main.html", context)