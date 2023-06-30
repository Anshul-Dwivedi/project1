from django import forms
from packmove.models import contact, quote



class contactform(forms.ModelForm):
	name=forms.CharField(max_length=200)
	email=forms.CharField(max_length=200)
	phone=forms.CharField(max_length=200)
	subject=forms.CharField(max_length=200)
	message=forms.CharField(max_length=2000)
	
	
	class Meta:
		model=contact
		fields="__all__"
		
class quoteform(forms.ModelForm):
    name= forms.CharField(max_length=200)
    email= forms.CharField(max_length=200)
    phone= forms.CharField(max_length=200)
    relocationdate= forms.CharField(max_length=200)
    fromaddress= forms.CharField(max_length=200)
    toaddress= forms.CharField(max_length=200)
    requirements= forms.CharField(max_length=1000)
    
    class Meta:
        model=quote
        fields="__all__"