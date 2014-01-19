from django.contrib import admin
from inventory.models import *

admin.site.register(Account)
admin.site.register(FinishedGoodsInventory)
admin.site.register(FinishedGoodsInventoryItem)
admin.site.register(FinishedGoodsInventoryType)
admin.site.register(FinishedGoodsMaterialsUsed)
admin.site.register(MaterialsInventory)
admin.site.register(MaterialsInventoryItem)
admin.site.register(Role)
admin.site.register(Transaction)
admin.site.register(Unit)
admin.site.register(User)
