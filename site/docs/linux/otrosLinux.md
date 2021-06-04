# Comandos de utilidad Linux sin clasificar

## TECLADO LINUX

```bash
setxkbmap latam
loadkeys la-latin1
```

## SORT

```vim
:24,31!sort
:sort u
```

## Buscar strings

```bash
find / -type f -exec grep -H 'text-to-find-here' {} \;
find / -type d -name "apt" 
```

## Espacio ocupado por un directorio

```bash
du -hx --max-depth=1 | sort -h
du -ch --max-depth=1 | sort -hr
```

## Cuantos archivos hay en un folder

```bash
find . -type f | wc -l
tree -a
```

## Borrar archivos viejos

```bash
find . -type f -name '*' -mtime +30 -exec rm {} \;
```
