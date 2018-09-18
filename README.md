# `lets-learn-how-to/run-drupal-in-docker`
A sample project running drupal inside a docker environment

## `initial setup`

```bash
$ docker-compose run backend composer install
```

## `running application`

```bash
$ docker-compose up -d 
```

Complete setup in the browser at [localhost:8080](http://localhost:8080).

Use `dr00p4l` for the database password

## `viewing logs`

```bash
$ docker-compose logs
```
