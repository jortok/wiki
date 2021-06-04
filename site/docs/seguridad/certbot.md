# Configuración del sshd.conf

## Certbot en Docker

```bash

# Certificado WEBSIRE
docker run -it --rm --name certbot \
            -v "$(pwd)/certs:/etc/letsencrypt" \
            certbot/certbot certonly \
                --manual \
                --preferred-challenges=dns \
                --server https://acme-v02.api.letsencrypt.org/directory \
                --email yo@correo.com \
                --agree-tos \
                --dry-run \
                -d *.dominio.com

```
