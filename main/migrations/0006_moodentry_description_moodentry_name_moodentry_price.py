# Generated by Django 5.1.1 on 2024-09-17 16:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0005_alter_moodentry_feelings_alter_moodentry_mood_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='moodentry',
            name='description',
            field=models.TextField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='moodentry',
            name='name',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='moodentry',
            name='price',
            field=models.CharField(default='', max_length=255),
        ),
    ]