#!/bin/sh
python manage.py makemigrations --no-input
python manage.py migrate --no-input
# python manage.py collectstatic --no-input
gunicorn core.wsgi:application --bind 0.0.0.0:8000

# if [ "$DATABASE" = "postgres" ]
# then
#     echo "Waiting for postgres..."

#     while ! nc -z $SQL_HOST $SQL_PORT; do
#       sleep 0.1
#     done

#     echo "PostgreSQL started"
# fi

# python manage.py flush --no-input
# python manage.py migrate

# exec "$@"