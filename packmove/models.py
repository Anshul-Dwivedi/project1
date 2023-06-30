from django.db import models

# Create your models here.
class services(models.Model):
    name=models.CharField(max_length=200)
    description=models.TextField()
    pic= models.FileField(upload_to='upload/')
    
    class Meta:
        db_table="services"
    def __str__(self):
        return self.name
        
class contact(models.Model):
    name= models.CharField(max_length=200)
    email= models.CharField(max_length=200)
    phone= models.CharField(max_length=200)
    subject= models.CharField(max_length=200)
    message= models.CharField(max_length=2000)
    
    class Meta:
        db_table="contact"
    def __str__(self):
        return self.name
        
class quote(models.Model):
    name= models.CharField(max_length=200)
    email= models.CharField(max_length=200)
    phone= models.CharField(max_length=200)
    relocationdate= models.CharField(max_length=200)
    fromaddress= models.CharField(max_length=200)
    toaddress= models.CharField(max_length=200)
    requirements= models.CharField(max_length=1000)
    
    class Meta:
        db_table="quote"
    def __str__(self):
        return self.name        