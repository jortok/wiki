# LXD

## Trucos

### Acceder a los contenedores por nombre de host

Esto supone que está utilizando el puente predeterminado, que se llama lxdbr0 y que está utilizando systemd-resolved.

```bash
 systemd-resolve --interface lxdbr0 --set-domain '~lxd' --set-dns $(lxc network get lxdbr0 ipv4.address | cut -d / -f 1)
 ```

 Ahora puede acceder a los contenedores por su nombre:

```bash
 $ ping nombrecontenedor.lxd
```

#### Otra solución

Parece que la solución systemd-resolve deja de funcionar después de un tiempo.

Otra solución es crear un `/etc/systemd/network/lxd.network` que contenga (reemplace `x` e `y` para que coincida con la IP de su bridge):

```bash
 [Match]
 Name=lxdbr0
 [Network]
 DNS=10.x.y.1
 Domains=~lxd
 IgnoreCarrierLoss=yes
 [Address]
 Address=10.x.y.1/24
 Gateway=10.x.y.1
```

Y luego active) e inicie `systemd-networkd.service`.


