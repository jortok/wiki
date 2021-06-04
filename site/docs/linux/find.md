# FIND

## Comandos útiles con "find"

### Listar todos los archivos de un directorio

```sh
find .
```


### Encontrar archivos o directorios

```sh
# Encuentra todos los archivos
find . -type f

# Encuentra todos los directorios
find . -type d

# Encuentra un archivo con su nombre
find . -type f -name "test*"

# Encuentra un archivo con su nombre (case insenitive)
find . -type f -iname "test*"

# Encuentra un archivo que fue modificado en los últimos 10 minutos
find . -type f -nmin -10

# Encuentra un archivo que fue modificado en los últimos 20 días
find . -type f -mtime -20

# Encuentra archivos de más de 5 MB
find . -type f -size +5M

# Encuentra archivos vacíos
find . -empty

# Encuentra por permisos
find . -perm 777

```

### Permisos web comunes

```sh
# Cambia el owner de los archivos y directorios
find /var/www/html -exec chown www-data:www-data {} +

# Cambia los permisos de los directorios
find /var/www/html -type d -exec chmod 775 {} +

# Cambia los permisos de los archivos
find /var/www/html -type f -exec chmod 664 {} +
```

### Borrado de archivos

```sh
# Primero encuentra los archivos que quieres eliminar
find . -type f -name "*.jpg" -maxdepth 1

# Una vez confirmado que sean esos los archivos deseados, eliminar
find . -type f -name "*.jpg" -maxdepth 1 -exec rm {} +

```
