from django.contrib import admin
from inventory.models import *

admin.site.register(Account)
admin.site.register(FinishedGoodsInventory)
admin.site.register(FinishedGoodsInventoryItem)
admin.site.register(FinishedGoodsInventoryType)
admin.site.register(FinishedGoodsMaterialsUsed)
class MaterialsInventoryAdmin(admin.ModelAdmin):
    fields = ['item', 'quantity', 'transaction', 'cost' ]
    readonly_fields = ['cost']
    list_display = ('item', 'quantity', 'cost')
admin.site.register(MaterialsInventory, MaterialsInventoryAdmin)
class MaterialsInventoryItemAdmin(admin.ModelAdmin):
    fields = ['name', 'unit', 'price_per_unit', 'description', 'photo', 'date_last_purchased', 'date_last_used']
admin.site.register(MaterialsInventoryItem, MaterialsInventoryItemAdmin)
admin.site.register(Role)
admin.site.register(Transaction)
admin.site.register(Unit)
admin.site.register(User)
