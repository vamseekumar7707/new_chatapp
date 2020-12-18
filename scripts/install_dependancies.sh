#!/bin/bash
sudo yum update
sudo yum install python3-pip python3-dev git -y
sudo yum install python3-devel
sudo yum install gcc c++
sudo yum install mysql
sudo pip3 install mysqlclient
sudo yum update

cd /new_chatapp
sudo pip3 install -r requirements.txt

sudo pip3 install django bcrypt django-extensions

cd /new_chatapp/fundoo/
python3 manage.py collectstatic --noinput
python3 manage.py runserver 0.0.0.0:8000
