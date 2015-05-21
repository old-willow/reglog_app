from django.shortcuts import render, render_to_response
from django.template import RequestContext


def home_page(request):
    context = {}
    #return render(request, 'home/index.html')
    return render_to_response('home/index.html',
                              context,
                              context_instance=RequestContext(request))
