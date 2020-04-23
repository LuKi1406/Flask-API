# FLASK API
(Application Factory Pattern)
- API vezan za kreiranje,registraciju novog korisnika te login korisnika.
- Kako bi poboljšali sigurnost aplikacije potrebna je autentifikacija. Ovisno o razini autentifikacije korisnik ima određena prava pri korištenju aplikacije. 
- Aplikacija sadrži admin korisnika koji ima najviše prava, odnosno ima pristup svemu unutar aplikacije, to postižemo kreiranjem dekoratora za endpointe(decorator.py unutar util folder-a).
- Razdvajanje korisnika od admina omogućuju tokeni. Različiti je token za user-a i za admin-a.

Ostalo:
- Aplikaciju pokrece manage.py file unutar flask-api direktorija
- user.py file sadrži modele za bazu podataka i migracije što import-om unutar manage.py file-a omogućuje kreairanje baze.
- API sadrži sljedeće podatke u bazi:
  >id,email,username,registered_on,admin,public_id,username,password_hash
  
- Model za pohranu podataka iz baze nalazi se unutar user.py datoteke
- Unutar direktorija [services] nalazi se datoteka users_services.py ,njena svrha je kreiranje novog korisnika provjeravajući ukoliko korisnik već postoji, vraća listu korisnika te također radi promjene unutar baze.
- util direktorij sadrži dto.py datoteku, njena svrha je prijenos podataka.
  Unutar se nalazi namspace modul koji sadrži modele i resurse za deklaraciju
- Blueprint koristimo za pohranu operacija koje pokrećemo unutar aplikacije.



### REQUIREMENTS



* [flask-bycript] 
* [flask-restplus] 
* [Flask-Migrate] 
* [pyjwt] 
* [Flask-Script] 
* [flask_testing] 

### INSTALACIJA

```sh
$ cd flask-api
$ py -m venv venv
$ pip install flask-bcrypt
$ pip install flask-restplus
$ pip install Flask-Migrate
$ pip install pyjwt
$ pip install Flask-Script
$ pip install flask_testing
$ pip freeze > reguirements.txt
```

KREIRANJE BAZE:
Baza main.db kreira se unutar util direktorija
```sh
$ venv\Scripts\activate
$ python manage.py run
$ python manage.py init db
$ python manage.py db migrate
$ python manage.py db upgrade
```
Provjerite unutar
> app/main/init 

je li baza uspješno kreirana
### Pokretanje aplikacije

```sh
$ cd flask-api
$ venv\Scripts\activate
$ python manage.py run
```
U pregledniku upišite:
> http://127.0.0.1:5000/ (ili pritisnite CTRL + lijevi klik miša na poveznicu)


