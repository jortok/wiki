# Configuración del banner de MEJOREDU


## Banner

Ejemplo de un banner, usa el que más te guste. Te recomiendo buscar ASCII text generator.

```bash

╔═══════════════════════════════════════════════════════════════════╗
║            WARNING, only authorized access is allowed.            ║
║                Actions are monitored and recorded.                ║
╠═══════════════════════════════════════════════════════════════════╣
║             AVISO, sólo se permite acceso a autorizados           ║
║             Tus acciones son monitoreadas y registradas           ║
╚═══════════════════════════════════════════════════════════════════╝

```

Pasos para la instalación en un servidor Linux:

### /etc/banner

Está estandarizado que el banner se encuentra en todos los servdores en el archivo `etc/banner`, se puede crear manualmente o con:

```bash
sudo cat <ruta_banner.txt> > /etc/banner
```

### Modificación de la configucación de sshd config

```bash
echo "Banner /etc/banner" >> /etc/ssh/ssh_config
```

### Reinicio del demonio SSHD

```bash
/sbin/service sshd restart
```
