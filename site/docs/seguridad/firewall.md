# Operaciones comunes de seguridad Linux

## firewall-cmd (CentOS)

### Gestionar Firewall-cmd

Para iniciar el servicio y habilitar la ejecución de FirewallD al inicio del servidor:

```bash
sudo systemctl start firewalld
sudo systemctl enable firewalld
```

Para detenerlo y deshabilitarlo:

```bash
sudo systemctl stop firewalld
sudo systemctl disable firewalld
```

Verificar el estatus del firewall. La salida debe decirle si se está ejecutando o no (running o not running).

```bash
sudo firewall-cmd --state
```

Para ver el estatus del demonio FirewallD:

```bash
sudo systemctl status firewalld
```

Para volver a cargar una configuración de FirewallD:
```
sudo firewall-cmd --reload
```

### Configurar firewall-cmd

Los archivos de configuración están ubicados en dos directorios:

- `/usr/lib/FirewallD` tiene las configuraciones predeterminadas como las zonas por defecto y los servicios comunes. Evite actualizarlos porque estos archivos serán sobrescritos cada vez que instala paquetes de actualización de firewalld.
- `/etc/firewalld` tiene los archivos de configuración del sistema. Estos archivos sobrescribirán una configuración predeterminada.

Para ver la zona predeterminada ejecute:

```bash
sudo firewall-cmd --get-default-zone
```

Para cambiar la zona predeterminada puede utilizar:

```bash
sudo firewall-cmd --set-default-zone=internal
```

Para ver las zonas utilizadas por su(s) interfaz o interfaces de red:

```bash
sudo firewall-cmd --get-active-zones
```

Para obtener todas las configuraciones para una zona específica:

```bash
sudo firewall-cmd --zone=public --list-all
```

Para obtener todas las configuraciones para todas las zonas:

```bash
sudo firewall-cmd --list-all-zones
```

### Agregar reglas al firewall-cmd

```bash
firewall-cmd --zone=public --permanent --add-service=http
firewall-cmd --zone=public --permanent --add-port=7937-9936/udp
firewall-cmd --reload

firewall-cmd --permanent --zone=trusted --add-source=192.168.31.28/32
firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="192.168.31.28" accept'
firewall-cmd --reload
```

## SELINUX

Desactivar SELinux:

```bash
# Comprobar si SELinux está activo
getenforce

# Editar la configuración en caso de estar activo
vi /etc/selinux/config
setenforce 0
```

## iptables

```bash
iptables -I INPUT -p tcp --dport 80 -j ACCEPT
iptables -I INPUT -p tcp --dport 443 -j ACCEPT
iptables-save > /etc/sysconfig/iptables
service iptables save
```

## Revisar puertos abiertos

```bash
ss -tulpn
```
