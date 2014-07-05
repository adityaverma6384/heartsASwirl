from django.conf.urls import patterns, url

from finances import views

urlpatterns = patterns('',
        url(r'^$', views.index, name='index'),
        url(r'^dashboard.html', views.dashboard,
            name='dashboard'),
        url(r'^account/list_accounts.html', views.list_accounts,
            name='list_accounts'),
        url(r'^account/chart_of_accounts.html', views.chart_of_accounts,
            name='chart_of_accounts'),
        url(r'^account/chart_of_accounts_pdf.html', views.chart_of_accounts_pdf,
            name='chart_of_accounts_pdf'),
        url(r'^dashboard.html', views.dashboard,
            name='dashboard'),
        url(r'^materials.html', views.materials,
            name='materials'),
        url(r'^transactions.html', views.transactions,
            name='transactions'),
        url(r'^manage_materials_inventory.html',
            views.manage_materials_inventory,
            name='manage_materials_inventory'),
        )
