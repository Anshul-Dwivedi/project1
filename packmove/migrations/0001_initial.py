# Generated by Django 2.0 on 2020-07-01 16:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='services',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('description', models.TextField()),
                ('pic', models.FileField(upload_to='upload/')),
            ],
            options={
                'db_table': 'services',
            },
        ),
    ]
