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
        return self.entries.aggregate(Sum('amount'))



   

class Transaction(models.Model):
    """An individual transation, i.e. a journal entry."""

    date = models.DateField()
    description = models.CharField(max_length=256)
    notes = models.CharField(max_length=1024, blank=True)
    def __unicode__(self):
        return self.description


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
