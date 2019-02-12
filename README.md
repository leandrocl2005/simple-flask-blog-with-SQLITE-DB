# Simple Flask blog with SQLite3 database

This project is a very simple version of the flask blog app in http://flask.pocoo.org/docs/1.0/tutorial/

The blog show some Renato Russo quotes. Renato Russo was a famous brazilian singer.

## How to use

* It's a Python 3.7.2 project.
* Create a virtual env.
* Clone this repository.
* Install the requirements

## Run the blog app

In a Windows prompt enter with the following commands:

```sh
$ set FLASK_APP=flaskr
$ set FLASK_ENV=development
$ flask init-db
$ flask run
```

In a Mac or Linux prompt enter with the following commands:

```sh
$ export FLASK_APP=flaskr
$ export FLASK_ENV=development
$ flask init-db
$ flask run
```

In web navigator access http://127.0.0.1:5000/
