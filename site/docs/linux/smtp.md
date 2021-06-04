# Servicios de envio de correo con SMTP

## Uso de SMTP desde Linux

Ejemplo de envio de correos en una sola línea:

```bash
echo -e "Subject: [$(date)] $(hostname)\n\n USER: $(whoami)\n\n MACHINE: $(hostname -s)\n\n DOMAIN: $(hostname -d)" | sendmail -f $(hostname -s)@$(hostname -d) -v yo@correo.com
```

## Envio de correos con docker

```bash
docker run --rm -it alphahydrae/nodemailer \
  --from yo@correo.com \
  --to yo@correo.com \
  --subject "Correo de prueba" \
  --smtp-auth-user yo@correo.com \
  --smtp-auth-pass <password> \
  --text "Hola Yo, esta es una prueba SMTP via docker con nodemailer." \
  --smtp-host smtp.coreo.com
```
