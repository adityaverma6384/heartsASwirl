# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
from __future__ import unicode_literals

from django.db import models

class Account(models.Model):
    name = models.CharField(max_length=128L)
    class Meta:
        db_table = 'account'
    def __unicode__(self):
        return self.name

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
    quantity = models.FloatField(db_column='quantityUsed') # Field name made lowercase.
    class Meta:
        db_table = 'finishedGoodsMaterialsUsed'
    def __unicode__(self):
        return str(self.item.id) + " " + self.item.description

class MaterialsInventory(models.Model):
    item = models.ForeignKey('MaterialsInventoryItem', db_column='materialsInventoryItemId') # Field name made lowercase.
    quantity = models.FloatField()
    transaction = models.ForeignKey('Transaction', db_column='transactionId') # Field name made lowercase.
    class Meta:
        db_table = 'materialsInventory'
    def __unicode__(self):
        return self.item.name + " quantity of " + str(self.quantity)
    def cost(self):
	return self.quantity * self.item.price_per_unit

class MaterialsInventoryItem(models.Model):
    unit = models.ForeignKey('Unit', db_column='unitId') # Field name made lowercase.
    price_per_unit = models.FloatField(db_column='pricePerUnit') # Field name made lowercase.
    description = models.TextField()
    photo = models.TextField()
    date_last_purchased = models.DateField(db_column='dateLastPurchased') # Field name made lowercase.
    date_last_used = models.DateField(db_column='dateLastUsed') # Field name made lowercase.
    name = models.CharField(max_length=256L)
    class Meta:
        db_table = 'materialsInventoryItem'
    def __unicode__(self):
        return self.name

class Role(models.Model):
    name = models.CharField(max_length=256L)
    class Meta:
        db_table = 'role'
    def __unicode__(self):
        return self.name

class Transaction(models.Model):
    date = models.DateField()
    description = models.TextField()
    amount = models.FloatField()
    account = models.ForeignKey(Account, db_column='accountId') # Field name made lowercase.
    class Meta:
        db_table = 'transaction'
    def __unicode__(self):
        return str(self.date) + " " +" " +  self.description
    def balance(self):
	return self.amount

class Unit(models.Model):
    name = models.CharField(max_length=32L)
    class Meta:
        db_table = 'unit'
    def __unicode__(self):
        return self.name

class User(models.Model):
    username = models.CharField(max_length=128L, db_column='userName') # Field name made lowercase.
    displayname = models.CharField(max_length=128L, db_column='displayName') # Field name made lowercase.
    roleid = models.ForeignKey(Role, db_column='roleId') # Field name made lowercase.
    class Meta:
        db_table = 'user'
    def __unicode__(self):
        return self.name

