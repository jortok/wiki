# Cambiar hostname de manera persistente

## Modificación del hostname en Linux

```bash
# Con hostnamectl se realizan los cambios permanentes, favor de evitar el comando "hostname" para modificar.
hostnamectl set-hostname <hostname.mejoredu.gob.mx>

# Reinicio de la red
/etc/init.d/network restart
```

### Comprobación

```bash
# Para el nombre corto.
hostname -s

# Para comprobar el dominio.
hostname -d
```

## Nota importante

Recordar que para evitar posibles problemas es recomendable modificar también el archivo `/etc/hosts` para que se identifique asimismo con el nuevo hostname.

```bash
# Registro del nuevo hostname y su short name.
# La red 127.0.0.0 es /8 por lo que se puede usar cualquier número en los octetos 2, 3 y 4 y se reconocerá
# como myself.
echo "127.0.10.1        <hostname>.mejoredu.gob.mx <hostname>
```
