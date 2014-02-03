from django.contrib import admin
from finances.models import *

admin.site.register(Account)
admin.site.register(AccountType)
admin.site.register(Transaction)
admin.site.register(Entry)
admin.site.register(EntryType)
