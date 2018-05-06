import json
import random
from django.shortcuts import render, get_object_or_404
from django.http import JsonResponse
from core.models import Enterprise, Post


def home(request):
    context = {
        'enterprises': Enterprise.objects.all()
    }
    return render(request, 'base/home.html', context)


def enterprise_details(request, slug):
    enterprise = get_object_or_404(Enterprise, slug=slug)
    # posts = Post.objects.filter(moderated=False).order_by('-id')[:50]
    posts = Post.objects.all()
    i = list(range(len(posts)))
    random.shuffle(i)
    context = {
        'enterprise': enterprise,
        'posts': posts,
        'featured': i[:30]
    }
    return render(request, 'base/enterprise_details.html', context)


def enterprise_new_posts(request, slug):
    enterprise = get_object_or_404(Enterprise, slug=slug)
    greater_than = request.GET.get('greater_than')

    posts = list(Post.objects.filter(id__gt=greater_than, moderated=False).order_by('-id').values('id', 'username', 'user_display_name', 'file', 'text')[:1])
    return JsonResponse(json.dumps(posts), safe=False)
