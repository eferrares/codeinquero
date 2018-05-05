from django.shortcuts import render, get_object_or_404
from core.models import Enterprise


def home(request):
    return render(request, 'base/home.html')


def enterprise_list(request):
    context = {
        'enterprises': Enterprise.objects.all()
    }
    return render(request, 'base/enterprise_list.html', context)


def enterprise_details(request, slug):
    enterprise = get_object_or_404(Enterprise, slug=slug)
    context = {
        'posts': enterprise.post_set.filter(file__isnull=False)
    }
    return render(request, 'base/enterprise_details.html', context)
