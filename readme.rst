# RESTAPIDocs Clinic User

Endpoints for viewing and manipulating the clinic user.

* Show List User : `GET /clinic-rest-api/index.php/users/`
* Create User : `POST /clinic-rest-api/index.php/users/`
```json
{
    "nama": "Diva Krishna",
    "username": "diva",
    "password": "diva",
    "role_id": "1111",
    "update_pass": "2021-02-01 14:33:21",
    "kd_cabang": "abc-123",
    "st_aktif": "1",
    "foto": "profile.png",
    "no_hp": "085382756490",
    "email": "divavvv@gmail.com",
    "tempat_lahir": "surabaya",
    "tanggal_lahir": "1999-05-05",
    "alamat": "buleleng, bali",
    "gender": "pria"
}
```
* Show An User : `GET /clinic-rest-api/index.php/users/:pk/`
* Update An User : `PUT /clinic-rest-api/index.php/users/:pk/`
```json
{
    "nama": "Diva Krishna",
    "username": "diva",
    "password": "diva",
    "role_id": "1111",
    "update_pass": "2021-02-01 14:33:21",
    "kd_cabang": "abc-123",
    "st_aktif": "1",
    "foto": "profile.png",
    "no_hp": "084328563894",
    "email": "divaxxx@gmail.com",
    "tempat_lahir": "sidoarjo",
    "tanggal_lahir": "1999-09-09",
    "alamat": "karangasem, bali",
    "gender": "pria"
}
```
* Delete An User : `DELETE /clinic-rest-api/index.php/users/:pk/`