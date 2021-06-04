# Operaciones comunes con SSL

## Generación de certificados SSL ED25519

```bash
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C Jorge Tokunaga"
```

## Copiar el certificado al nuevo host

```bash
ssh-copy-id -i ~/.ssh/id_ed25519 <ip o hostname destino>
```

## Utilización del CERTBOT

```bash
certbot certonly --manual
```

## Revisar vigencia de un certificado SSL

```bash
openssl x509 -enddate -noout -in cert.pem
```

## Conversiones

### Convertir de CRT a PEM

```bash
openssl x509 -in wlan.inee.edu.mx.crt -out wlan.inee.edu.mx.pem -outform PEM
```

### Convertir a P12 (TOMCAT)

```bash
openssl pkcs12 -export -out fullchain1.p12 -in fullchain1.pem -inkey privkey1.pem -name tomcat
keytool -importkeystore -destkeystore tomcat.jks -srckeystore fullchain1.p12  -srcstoretype PKCS12 -alias tomcat
```

## Certificados digitales ROOT de CISCO Umbrella

- [OpenDNS Test](https://ssl-proxy.opendnstest.com/)
- [Cisco Umbrella Root CA](https://d36u8deuxga9bo.cloudfront.net/certificates/Cisco_Umbrella_Root_CA.cer)


