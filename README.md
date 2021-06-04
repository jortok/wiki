# TOKUPEDIA

Este sitio recopila algunas notas y apuntes que me han resultado útiles en alguna ocasión, espero te sirva algo.

## Motor

Este sitio es estático y es autogenerado con `DOCPRESS`, si te interesa hacer algo igual, puedes visitar su GIT en:

<a href="https://github.com/docpress/docpress" target="_blank">GitHub: docpress/docpress</a>

### Docker

Para mayor comodidad, el sitio fue generado en 1 contenedor que Node Alpine (para que sea ligero), instala las dependencias de docpress y luego toma el contenido Markdown de la carpeta `docs` para generar el sitio estático. Adicionalmente, se integra un contenedor nginx para ser el proxy.

Para correr el proyecto:

```sh
git clone git@github.com:jortok/wiki.git
cd wiki
docker-compose build
docker-compose up -d
```

Todo el código del proyecto lo puedes encontrar en mi repositorio: 
<a href="https://github.com/jortok/wiki" target="_blank">GitHub: jortok/wiki</a>

Además, puedes ver el proyecto en funcionamiento en: <a href="https://wiki.tokunaga.mx/" target="_blank">https://wiki.tokunaga.mx/</a>
