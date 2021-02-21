# Django básico

Base para el inicio de la creción de una app Django

Descargamos el proyecto con `git clone ...`

Para crear una aplicación usamos (cambiando 'app' por el nombre del proyecto):

```bash
docker-compose run web django-admin startproject app .
```

Será necesario editar el fichero settings.py para que permita acceder desde cualquier cliente:

```bash
vi code/app/settings.py
### Buscar y editar el valor
ALLOWED_HOSTS = ['*']
```

Finalmente será necesario editar el fichero .gitignore para adecuar el nombre de la 'app'
```bash
code/app/__pycache__
```
