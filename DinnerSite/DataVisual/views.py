# -*- coding: utf8 -*-
from django.shortcuts import render
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.shortcuts import render
from .models import ListProducts


# request хранит в себе полную информацию о текущем запросе
def index(request):
    templ = render_to_string("DataVisual/index.html")
    return HttpResponse(templ)


def products_view(request):
    products = ListProducts.objects.all()
    return render(request, 'DataVisual/products.html', {'products': products})
