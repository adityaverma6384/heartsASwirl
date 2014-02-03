from django.http import HttpResponse
from django.template import RequestContext, loader
from django.core import serializers
from django.shortcuts import render
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
import datetime

from finances.models import Account

def index(request):
    template = loader.get_template('finances/index.html')
    context = RequestContext(request, {
        'foo': 'bar',
        })
    return HttpResponse(template.render(context))

def list_accounts(request):
    return render(request, "finances/list_accounts.html", {"accounts": Account.objects.all()})

def chart_of_accounts(request):
    template = loader.get_template('finances/chart_of_accounts.html')
    assets = Account.objects.filter(type__name='asset')
    liabilities = Account.objects.filter(type__name='liability')
    equities = Account.objects.filter(type__name='equity')
    revenues = Account.objects.filter(type__name='revenue')
    expenses = Account.objects.filter(type__name='expense')
    context = RequestContext(request, {
        'assets': assets,
        'liabilities': liabilities,
        'equities': equities,
        'revenues': revenues,
        'expenses': expenses,
        })
    return HttpResponse(template.render(context))

def chart_of_accounts_pdf(request):
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="chart_of_accounts.pdf"'
    
    assets = Account.objects.filter(type__name='asset')
    liabilities = Account.objects.filter(type__name='liability')
    equities = Account.objects.filter(type__name='equity')
    revenues = Account.objects.filter(type__name='revenue')
    expenses = Account.objects.filter(type__name='expense')
    context = RequestContext(request, {
        'assets': assets,
        'liabilities': liabilities,
        'equities': equities,
        'revenues': revenues,
        'expenses': expenses,
        })

    p = canvas.Canvas(response)
    p.drawCentredString(4.25*inch, 11*inch, "Hearts A Swirl")
    p.drawCentredString(4.25*inch, 10.75*inch, "Chart of Accounts")
    p.drawCentredString(4.25*inch, 10.5*inch,
            str(datetime.datetime.now().date()))
    p.line(1*inch, 10.3*inch, 7.5*inch, 10.3*inch)
    i=10*inch;

    p.drawString(1.5*inch, i, "Assets")
    i-=.2*inch
    for account in assets:
        p.drawString(2.5*inch, i, str(account.number) + " " + account.description)
        i-=.2*inch
    
    p.drawString(1.5*inch, i, "Liabilities")
    i-=.2*inch
    for account in liabilities:
        p.drawString(2.5*inch, i, str(account.number) + " " + account.description)
        i-=.2*inch
    
    p.drawString(1.5*inch, i, "Equities")
    i-=.2*inch
    for account in equities:
        p.drawString(2.5*inch, i, str(account.number) + " " + account.description)
        i-=.2*inch
    
    p.drawString(1.5*inch, i, "Revenues")
    i-=.2*inch
    for account in revenues:
        p.drawString(2.5*inch, i, str(account.number) + " " + account.description)
        i-=.2*inch
    
    p.drawString(1.5*inch, i, "Expenses")
    i-=.2*inch
    for account in revenues:
        p.drawString(2.5*inch, i, str(account.number) + " " + account.description)
        i-=.2*inch
    
    
    p.showPage()
    p.save()
    return response
