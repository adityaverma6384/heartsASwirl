from django.contrib import admin
from finances.models import *

admin.site.register(Account)
admin.site.register(AccountType)
admin.site.register(Transaction)
admin.site.register(Entry)
admin.site.register(EntryType)

admin.site.register(FinishedGoodsInventory)
admin.site.register(FinishedGoodsInventoryItem)
admin.site.register(FinishedGoodsInventoryType)
admin.site.register(FinishedGoodsMaterialsUsed)
class MaterialsInventoryAdmin(admin.ModelAdmin):
    fields = ['item', 'quantity', 'transaction', 'price_per_unit', 'cost' ]
    readonly_fields = ['cost']
    list_display = ('item', 'quantity', 'price_per_unit', 'cost')
admin.site.register(MaterialsInventory, MaterialsInventoryAdmin)
class MaterialsInventoryItemAdmin(admin.ModelAdmin):
    fields = ['name', 'unit', 'description', 'photo', 'date_last_purchased', 'date_last_used']
admin.site.register(MaterialsInventoryItem, MaterialsInventoryItemAdmin)
admin.site.register(Unit)
