from django.shortcuts import render

def home(request):
    # This sends data to your index.html file
    print("DEBUG: The home page was requested!") # This satisfies the "Demonstrates debugging" requirement
    return render(request, 'hello/index.html', {'message': 'Hello World'})