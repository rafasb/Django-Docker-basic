# Django básico

Base para el inicio de la creción de una app Django

Descargamos el proyecto con `git clone ...`

Para crear una aplicación usamos (cambiando 'app' por el nombre del proyecto):

```bash
docker-compose run web django-admin startproject app .
```

Será necesario editar el fichero settings.py para que permita acceder desde cualquier cliente:

NOTA: Los ficheros creados por la ejecución del contenedor serán propiedad de root (en Linux) como paso previo hay que apropiarse de los mismos con `sudo chown -R $USER:$USER .`

```bash
vi code/app/settings.py
### Buscar y editar el valor
ALLOWED_HOSTS = ['*']
```

Finalmente será necesario editar el fichero .gitignore para adecuar el nombre de la 'app'
```bash
code/app/__pycache__
```

Ahora podemos arrancar el proyecto con:

```bash
docker-compose up -d --build
```
