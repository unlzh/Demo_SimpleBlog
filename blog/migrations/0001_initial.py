# Generated by Django 2.2.2 on 2019-09-25 14:36

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='Title', max_length=32)),
                ('summary', models.CharField(max_length=64, null=True)),
                ('content', models.TextField(null=True)),
                ('pic', models.ImageField(null=True, upload_to='article_pic')),
                ('pub_date', models.DateField(auto_now=True)),
            ],
        ),
    ]