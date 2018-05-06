import json
import random
from django.shortcuts import render, get_object_or_404
from django.http import JsonResponse
from core.models import Enterprise, Post


def home(request):
    context = {
        'enterprises': Enterprise.objects.all().order_by('id')
    }
    return render(request, 'base/home.html', context)


def enterprise_details(request, slug):
    enterprise = get_object_or_404(Enterprise, slug=slug)
    posts = Post.objects.filter(enterprise=enterprise, show=True, moderated=False).order_by('-id')[:50]
    i = list(range(len(posts)))
    random.shuffle(i)
    context = {
        'enterprise': enterprise,
        'posts': posts,
        'featured': i[:5]
    }
    return render(request, 'base/enterprise_details.html', context)


def enterprise_new_posts(request, slug):
    enterprise = get_object_or_404(Enterprise, slug=slug)
    greater_than = request.GET.get('greater_than')

    posts_obj = Post.objects.filter(enterprise=enterprise, id__gt=greater_than, moderated=False, show=True).order_by('-id')
    posts = []
    for post in posts_obj:
        posts.append(
            {
                'id': post.id,
                'username': post.username,
                'user_display_name': post.user_display_name,
                'file': post.file,
                'text': post.text,
                'random_color': post.random_color(),
            }
        )
    return JsonResponse(json.dumps(posts[:1]), safe=False)
