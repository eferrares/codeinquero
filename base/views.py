from django.shortcuts import render


def home(request):
    return render(request, 'base/home.html')


def enterprise_list(request):
    context = {}
    return render(request, 'base/enterprise_list.html', context)
