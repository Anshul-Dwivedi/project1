from django.shortcuts import render, redirect
from django.views.generic import TemplateView, ListView
from packmove.models import services, contact, quote
from packmove.forms import contactform, quoteform
# Create your views here.

class homeview(TemplateView):
    template_name="home.html"

class aboutview(TemplateView):
    template_name="about.html"

class servicesview(ListView):
    template_name="services.html" 
    def get_queryset(self):
        return services.objects.all()
        
class safetyview(TemplateView):
    template_name="safety.html"
    
class gallaryview(TemplateView):
    template_name="gallary.html"

class contactview(TemplateView):
    template_name="contact.html"    
    
def insertcontact(request):
	if request.method=='POST':
		form=contactform(request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect('/contact/')
			except:
				pass
				
	else:
		form=contactform()
	return render(request,'contact.html',{'form':form})
	    
class quoteview(TemplateView):
    template_name="quote.html"    
    
def insertquote(request):
	if request.method=='POST':
		form=quoteform(request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect('/quote/')
			except:
				pass
				
	else:
		form=quoteform()
	return render(request,'quote.html',{'form':form})
        