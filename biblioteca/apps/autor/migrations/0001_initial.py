# Generated by Django 3.1.2 on 2020-10-23 22:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('libro', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Autores',
            fields=[
                ('idAutor', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('nacionalidad', models.CharField(max_length=50)),
                ('idlibro', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='libro.libros')),
            ],
        ),
    ]