#!/bin/bash

# Run migrations
python3 manage.py makemigrations
python3 manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Run the specified command (if any)
exec "$@"