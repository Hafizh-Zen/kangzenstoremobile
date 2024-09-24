from django.db import models
import uuid
from django.contrib.auth.models import User

class Product(models.Model):
    nameser = models.CharField(max_length=255)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    description = models.TextField()
    rating = models.DecimalField(max_digits=5, decimal_places=2)
    desc1 = models.TextField()
    desc2 = models.TextField()
    desc3 = models.TextField()
    desc4 = models.TextField()
    desc5 = models.TextField()
    nameuser = models.CharField(max_length=255, default='Unknown')
    npmuser = models.CharField(max_length=255, default='0000000000')
    classuser = models.CharField(max_length=255, default='Unknown')


 



    def _str_(self):
        return self.name
    
class MoodEntry(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)  # add this line
    mood = models.CharField(max_length=255, default='')
    time = models.DateField(auto_now_add=True)
    feelings = models.CharField(max_length=255, default='')
    mood_intensity = models.CharField(max_length=255, default='')
    name = models.CharField(max_length=255, default='')
    price = models.CharField(max_length=255, default='')
    description = models.TextField(max_length=255, default='')
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    @property
    def is_mood_strong(self):
        return self.mood_intensity > 5
