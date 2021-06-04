# rsync

## Utilización recomendada para rsync

```bash
# Parámetros recomendados
# -a, --archive               archive mode; equals -rlptgoD (no -H,-A,-X)
# -v, --verbose               increase verbosity
# -z, --compress              compress file data during the transfer
# -h, --human-readable        output numbers in a human-readable format
# --exclude=PATTERN           exclude files matching PATTERN
# -P                          same as --partial --progress
rsync -avzh --exclude '.snapshot' www:/var/www/html/ /home/jtokunaga/Documents/www
rsync -avzh <hostname>:/ruta/var /var

# Si se desea borrar en el destino lo que no hay en el origen.
# --dry-run               perform a trial run with no changes made
# --delete                delete extraneous files from dest dirs
rsync -avhPz --delete --dry-run origen/ destino/
```
