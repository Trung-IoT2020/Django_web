# Generated by Django 3.1.3 on 2020-11-18 09:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_auto_20201118_1549'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='dangbaichutro',
            name='id_dbc',
        ),
        migrations.RemoveField(
            model_name='dangbainguoitimtro',
            name='id_dbc',
        ),
    ]
