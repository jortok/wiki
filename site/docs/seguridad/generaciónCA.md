# Generación de un CA SSL Certificate

## Root CA

```bash
openssl genrsa -des3 -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1024 -out rootCA.crt
```

## PARA CADA SERVIDOR

```bash
openssl genrsa -out toku.mejoredu.gob.mx.key 2048
```

```bash
openssl req -new -sha256 -key toku.mejoredu.gob.mx.key -subj "/C=MX/ST=CDMX/O=Comision Nacional para la Mejora Continua de la Educacion/OU=DSTI/CN=toku.mejoredu.gob.mx" -out toku.mejoredu.gob.mx.csr
openssl req -new -sha256 -key wlan.inee.edu.mx.key -subj "/C=MX/ST=CDMX/O=Instituto Nacional para la Evaluacion de la Educacion/OU=DSTI/CN=wlan.inee.edu.mx" -out wlan.inee.edu.mx.csr

openssl req -in toku.mejoredu.gob.mx.csr -noout -text
openssl x509 -req -in toku.mejoredu.gob.mx.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out toku.mejoredu.gob.mx.crt -days 500 -sha256
openssl x509 -req -in wlan.inee.edu.mx.csr -CA inee.edu.mx.pem -CAkey inee.edu.mx.PEM.key -CAcreateserial -out wlan.inee.edu.mx.crt -days 500 -sha256
```
