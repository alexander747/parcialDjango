# Generated by Django 3.1.2 on 2020-10-23 22:01

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Libros',
            fields=[
                ('idLibro', models.IntegerField(primary_key=True, serialize=False)),
                ('codigo', models.IntegerField()),
                ('titulo', models.CharField(max_length=100)),
                ('isbn', models.CharField(max_length=30)),
                ('editorial', models.CharField(max_length=60)),
                ('numPags', models.IntegerField()),
            ],
        ),
    ]
