from django.urls import path, include
from packmove import views


urlpatterns = [
	path('',views.homeview.as_view()),
    path('about/',views.aboutview.as_view()),
    path('services/',views.servicesview.as_view()),
    path('safety/',views.safetyview.as_view()),
    path('gallary/',views.gallaryview.as_view()),
    path('contact/',views.contactview.as_view()),
    path('insertcontact/', views.insertcontact),
    path('quote/',views.quoteview.as_view()),
    path('insertquote/', views.insertquote),
	
]
