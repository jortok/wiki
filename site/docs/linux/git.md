# GIT

## Tabla de Contenido<!-- omit in toc -->
- [GIT](#git)
  - [Los 3 estados de Git](#los-3-estados-de-git)
  - [Configurar Git](#configurar-git)
    - [Configuración del usuario](#configuración-del-usuario)
    - [Colorear el output del terminal de Git.](#colorear-el-output-del-terminal-de-git)
    - [Configurar el editor de texto de git](#configurar-el-editor-de-texto-de-git)
    - [Ver la lista de configuraciones](#ver-la-lista-de-configuraciones)
  - [Comandos Git](#comandos-git)
    - [Flujos de Trabajo](#flujos-de-trabajo)
    - [Múltiples entornos de trabajo](#múltiples-entornos-de-trabajo)
  - [Repositorios Remotos (Github)](#repositorios-remotos-github)

## Los 3 estados de Git

- `Working Directory` Es donde trabajamos de manera local, pero para guardarlo hay que pasarlo al Staging Area
- `Staging Area` Es el área de preparación, se almacenan justo antes de hacer commit
- `Git repository` El repositorio donde almacenaremos los cambios del proyecto

## Configurar Git

### Configuración del usuario

```bash
git config --global user.email user@example.com
git config --global user.name "Tu nombre"
```

### Colorear el output del terminal de Git.

```bash
git config --global color.ui true
```

### Configurar el editor de texto de git

```bash
git config --global core.editor ["editor --wait"]
```

### Ver la lista de configuraciones

```bash
git config --list
```

## Comandos Git

### Flujos de Trabajo

- `git init [nombre]` inicia un repositorio y crea la carpeta [nombre].
- `git status` muestra el estado de los archivos en el repositorio.
  - `untracked files` son archivos que están en nuestro Working Directory, lo que aparezca en rojo es lo que se ha modificado y hay que pasarlo al Staging.
  - `changes to be comitted` son los archivos que se encuentran en el staging area. Aparecen en verde.
- `git add [archivo]` agrega un archivo al staging
- `git add -A` agrega todos los archivos del working directory al staging area. `git add .` hace lo mismo.
  - `git add -n [archivo]` simula el agregado de un [archivo].
- `git rm --cached [archivo]` quita un [archivo] del staging al working area.
- `git rm -f` quita el archivo del staging y del working directory.
- `git commit -m ["mensaje"]` agrega los archivos del staging al repositorio.
- `git commit --amend` anexa el nuevo cambio al anterior commit. Si se escribe un mensaje este sobreescribe el anterior.
- `git tag -a [tag] -m ["comentario"]` agrega el tag con un comentario al ultimo commit.
- `git tag -l` lista los tags.
- `git tag [tag] [sha1 del commit]` agrega un tag a un commit en partcular.
- `git tag -d [tag]` elimina el tag.
- `git tag -f -a [nuevo tag] [sha1 del commit]` renombra el tag del commit pero deja el anterior tag.
- `git log` ver la lista de commits.
  - `--oneline` resumido.
  - `--graph` ver las ramificaciones.
  - `-[numero]` ver los ultimos [numero] commits.
- `git diff [sha1 del commit]` muestra la diferencias del commit [sha1].
- `git diff [sha1-1] [sha1-2]` diferencia entre la version 1 vs la version 2.
- `git reset`
  - `--soft [sha1]` borrar todos los commits posteriores a [sha1]. Los archivos que salen del repositorio son pasados al staging area.
  - `--mixed [sha1]` borrar todos los commits posteriores a [sha1]. Los archivos que salen del repositorio son pasados al working directory
  - `--hard [sha1]` elimina todos los cambios incluso del working directory.

### Múltiples entornos de trabajo

- `git branch [nombre]` crear la rama [nombre]
- `git branch -l` lista las ramas
- `git branch -d [nombre]` elimina el branch [nombre]. Esto solo funciona si el branch no tiene ningún commit.
- `git branch -D [nombre]` fuerza la eliminación de un branch sin importar si tiene commits
- `git branch -m [nombre inicial] [nuevo nombre] ` renombra el branch [nombre inicial] por [nuevo nombre]
- `git checkout [brach]` moverse al branch [branch]
- `git chechout [sha1]` ir al momento del tiempo de ese commit
- `git checkout -b [nombre]` crea un branch y se mueva al mismo
- `git checkout -- [archivo]` descarta todos los cambios del archivo
- `git merge [branch]` mezcla el branch [branch] con el branch actual
- `git rebase [branch]` mezcla el branch con el brach actual. Es como el merge pero sin crear bifurcaciones
- `git stash` es un limbo como el staging area. Te permite cambiar de branch sin hacer commit
- `git stash list` ver la lista de los stash
- `git stash drop stash@{numero}` elimina el stash
- `git stash apply stash@{numero}` aplica el stash
- `git cherry pick [sha1]` mover el commit [sha1] de otro branch al branch actual

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Repositorios Remotos (Github)

- `git clone [ruta]` trae el repositorio a la computadora
- `fork` hace una copia de un repositorio externo a nuestra cuenta
- `ssh-keygen -t rsa -b 4096 -C "correo@ejemploc.com"` crea una llave ssh. El correo debe de ser el mismo que se encuentra en Github
- `git remote add [nombre] [ruta]` conecta un repositorio remoto con uno local. Por defecto el nombre es origin
- `git remote -v` lista las conexiones remota
- `git remote remove [nombre]` remueve una conexión remota
- `git fetch [nombre] [branch]` traer . Solo los trae pero no lo mezcla
- `git merge [origin/master] --allow-unrelated-histories` hace un merge del fetch con el repositorio local
- `git pull [origin] [branch]` hace un fetch mas merge
- `git push [origin] [master]` envia al repositorio local al remoto
  - `--tags` enviar los tags
- `git push --all origin` push a todos los branch y tags
