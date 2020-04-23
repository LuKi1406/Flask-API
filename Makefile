
system-packages:
   install python-pip -y

python-packages:
   pip install -r requirements.txt

install: system-packages python-packages

tests:
   python manage.py test

run:
   python manage.py run

create database:
    python manage.py run
    python manage.py init db
    python manage.py db migrate
    python manage.py db upgrade