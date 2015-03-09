#!/bin/sh

echo "Waitting for 5 seconds to init database..."
sleep 5

echo "Waitting for 3 seconds to migrate database..."
python manage.py migrate
sleep 3

echo "runserver on port 8000..."
python manage.py runserver 0.0.0.0:8000
