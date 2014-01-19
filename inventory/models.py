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
    id = models.IntegerField(primary_key=True)
    name = models.IntegerField()
    class Meta:
        db_table = 'account'

class FinishedGoodsInventory(models.Model):
    id = models.IntegerField(primary_key=True)
    finishedgoodsinventoryitemid = models.ForeignKey('FinishedGoodsInventoryItem', db_column='finishedGoodsInventoryItemId') # Field name made lowercase.
    quantity = models.IntegerField()
    class Meta:
        db_table = 'finishedGoodsInventory'

class FinishedGoodsInventoryItem(models.Model):
    id = models.IntegerField(primary_key=True)
    typeid = models.ForeignKey('FinishedGoodsInventoryType', db_column='typeId') # Field name made lowercase.
    description = models.TextField()
    photo = models.TextField()
    class Meta:
        db_table = 'finishedGoodsInventoryItem'

class FinishedGoodsInventoryType(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=128L)
    description = models.TextField()
    class Meta:
        db_table = 'finishedGoodsInventoryType'

class FinishedGoodsMaterialsUsed(models.Model):
    id = models.IntegerField(primary_key=True)
    finishedgoodsinventoryitemid = models.ForeignKey(FinishedGoodsInventoryItem, db_column='finishedGoodsInventoryItemId') # Field name made lowercase.
    materialsinventoryitemid = models.ForeignKey('MaterialsInventoryItem', db_column='materialsInventoryItemId') # Field name made lowercase.
    quantityused = models.FloatField(db_column='quantityUsed') # Field name made lowercase.
    class Meta:
        db_table = 'finishedGoodsMaterialsUsed'

class MaterialsInventory(models.Model):
    id = models.IntegerField(primary_key=True)
    materialsinventoryitemid = models.ForeignKey('MaterialsInventoryItem', db_column='materialsInventoryItemId') # Field name made lowercase.
    quantity = models.FloatField()
    class Meta:
        db_table = 'materialsInventory'

class MaterialsInventoryItem(models.Model):
    id = models.IntegerField(primary_key=True)
    unitid = models.ForeignKey('Unit', db_column='unitId') # Field name made lowercase.
    priceperunit = models.FloatField(db_column='pricePerUnit') # Field name made lowercase.
    description = models.TextField()
    photo = models.TextField()
    datelastpurchased = models.DateField(db_column='dateLastPurchased') # Field name made lowercase.
    datelastused = models.DateField(db_column='dateLastUsed') # Field name made lowercase.
    name = models.CharField(max_length=256L)
    class Meta:
        db_table = 'materialsInventoryItem'

class Role(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=256L)
    class Meta:
        db_table = 'role'

class Transaction(models.Model):
    id = models.IntegerField(primary_key=True)
    date = models.DateField()
    description = models.TextField()
    amount = models.FloatField()
    accountid = models.ForeignKey(Account, db_column='accountId') # Field name made lowercase.
    class Meta:
        db_table = 'transaction'

class Unit(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=32L)
    class Meta:
        db_table = 'unit'

class User(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.CharField(max_length=128L, db_column='userName') # Field name made lowercase.
    displayname = models.CharField(max_length=128L, db_column='displayName') # Field name made lowercase.
    roleid = models.ForeignKey(Role, db_column='roleId') # Field name made lowercase.
    class Meta:
        db_table = 'user'

