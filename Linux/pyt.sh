#!/bin/bash
#sudo apt install postgresql postgresql-contrib python-virtualenv -y
cd ~/Programming
#mkdir -p Python/hello
cd Python/hello
#virtualenv -p python3 .
source bin/activate
#pip install django
pip install gunicorn
pip install psycopg2
django-admin.py startproject hello

