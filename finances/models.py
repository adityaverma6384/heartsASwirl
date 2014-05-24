from django.db import models
from django.db.models import Sum

class AccountType(models.Model):
    """Type of account, i.e. asset or liability."""

    name = models.CharField(max_length=20)
    positive_credit = models.BooleanField(
            """credit entries to this account increase the value if True.
            This will generally be True for liability, revenue, and equity
            accounts and False for asset and expense accounts""")
    def __unicode__(self):
        return self.name


class Account(models.Model):
    """An individual account, i.e. Cash or Sales Revenue"""

    number = models.IntegerField()
    type = models.ForeignKey(AccountType, related_name='accounts')
    description = models.CharField(max_length=256)
    def __unicode__(self):
        return self.description
    def get_balance(self):
        return str(self.entries.aggregate(Sum('amount'))['amount__sum'])


class Transaction(models.Model):
    """An individual transation, i.e. a journal entry."""

    date = models.DateField()
    description = models.CharField(max_length=256)
    notes = models.CharField(max_length=1024, blank=True)
    def __unicode__(self):
        return  self.description + " " + str(self.date) 


class EntryType(models.Model):
    """Type of an entry, i.e. credit or debit"""

    name = models.CharField(max_length=20)
    def __unicode__(self):
        return self.name


class Entry(models.Model):
    """An individual accounting entry (leg), i.e. one entry on a T chart.
    Associated to a transaction and an account"""

    transaction = models.ForeignKey(Transaction, related_name='entries')
    type = models.ForeignKey(EntryType, related_name='entries')
    account = models.ForeignKey(Account, related_name='entries')
    amount = models.DecimalField(max_digits=11, decimal_places=2)
    def is_credit(self):
        credit = EntryType.objects.get(name='credit')
        return type == credit

class FinishedGoodsInventory(models.Model):
    item = models.ForeignKey('FinishedGoodsInventoryItem', db_column='finishedGoodsInventoryItemId') # Field name made lowercase.
    quantity = models.IntegerField()
    class Meta:
        db_table = 'finishedGoodsInventory'
    def __unicode__(self):
        return self.item.description + " quantity " + str(self.quantity)



class FinishedGoodsInventoryItem(models.Model):
    type = models.ForeignKey('FinishedGoodsInventoryType', db_column='typeId') # Field name made lowercase.
    description = models.TextField()
    photo = models.TextField()
    class Meta:
        db_table = 'finishedGoodsInventoryItem'
    def __unicode__(self):
        return self.description

class FinishedGoodsInventoryType(models.Model):
    name = models.CharField(max_length=128L)
    description = models.TextField()
    class Meta:
        db_table = 'finishedGoodsInventoryType'
    def __unicode__(self):
        return self.name

class FinishedGoodsMaterialsUsed(models.Model):
    item = models.ForeignKey(FinishedGoodsInventoryItem, db_column='finishedGoodsInventoryItemId') # Field name made lowercase.
    material_used = models.ForeignKey('MaterialsInventoryItem', db_column='materialsInventoryItemId') # Field name made lowercase.
    quantity = models.DecimalField(db_column='quantityUsed', decimal_places=2,
            max_digits=11) # Field name made lowercase.
    class Meta:
        db_table = 'finishedGoodsMaterialsUsed'
    def __unicode__(self):
        return str(self.item.id) + " " + self.item.description

class MaterialsInventory(models.Model):
    item = models.ForeignKey('MaterialsInventoryItem', db_column='materialsInventoryItemId') # Field name made lowercase.
    quantity = models.DecimalField(decimal_places=2, max_digits=11)
    price_per_unit = models.DecimalField(db_column='pricePerUnit',
            decimal_places=4, max_digits=11) # Field name made lowercase.
    transaction = models.ForeignKey('Transaction', db_column='transactionId') # Field name made lowercase.
    class Meta:
        db_table = 'materialsInventory'
    def __unicode__(self):
        return self.item.name + " quantity of " + str(self.quantity)
    def cost(self):
        return self.quantity * self.price_per_unit

class MaterialsInventoryItem(models.Model):
    unit = models.ForeignKey('Unit', db_column='unitId') # Field name made lowercase.
    description = models.TextField()
    photo = models.TextField()
    date_last_purchased = models.DateField(db_column='dateLastPurchased') # Field name made lowercase.
    date_last_used = models.DateField(db_column='dateLastUsed') # Field name made lowercase.
    name = models.CharField(max_length=256L)
    class Meta:
        db_table = 'materialsInventoryItem'
    def __unicode__(self):
        return self.name

class Unit(models.Model):
    name = models.CharField(max_length=32L)
    class Meta:
        db_table = 'unit'
    def __unicode__(self):
        return self.name
