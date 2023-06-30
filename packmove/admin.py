from django.contrib import admin
from packmove.models import services, contact, quote
# Register your models here.

@admin.register(services)
class servicesAdmin(admin.ModelAdmin):
    pass

@admin.register(contact)
class contactAdmin(admin.ModelAdmin):
    list_display=('name','email','phone','subject','message',)

@admin.register(quote)
class quoteAdmin(admin.ModelAdmin):
    list_display=('name','email','phone','relocationdate','fromaddress','toaddress',
    'requirements',)    