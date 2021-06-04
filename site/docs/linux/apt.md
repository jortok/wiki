# Ubuntu

## APT

### Guardar una lista de programas instalados

```sh
sudo apt list --installed | cut -d'/' -f 1 | tr '\n' ' ' > ~/.cache/instalados.txt

```

### Instalar los programas de esa lista

```sh
cat ~/.cache/instalados.txt | xargs sudo apt install
```
