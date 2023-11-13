# -*- coding: utf8 -*-
from django.shortcuts import render
from django.http import HttpResponse
from django.template.loader import render_to_string


# request хранит в себе полную информацию о текущем запросе
def index(request):
    templ = render_to_string("DataVisual/index.html")
    return HttpResponse(templ)
