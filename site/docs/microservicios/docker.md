# Docker

## Servicio de http-echo

Para lanzar un servidor HTTP y despliegue un mensaje por el puerto deseado.

```bash
docker run --rm -p 5678:5678 \
    hashicorp/http-echo \
    -text="hola"
```

## Servidor MarkDown

```bash
docker run -d --rm \
  --name markserv \
  -v $(pwd):/usr/src/app/md \
  -p8080:8080 \
  -p35729:35729 \
  jortok/markserv:latest
```
