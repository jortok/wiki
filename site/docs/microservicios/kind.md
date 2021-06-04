# KIND

## Tabla de contenido

- [KIND](#kind)
  - [Tabla de contenido](#tabla-de-contenido)
  - [Instalación](#instalación)
  - [Comandos básicos](#comandos-básicos)
  - [Configuración del clúster](#configuración-del-clúster)

## Instalación

```bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.10.0/kind-linux-amd64
chmod +x ./kind
sudo install -o root -g root -m 0755 ./kind /usr/local/bin/kind
```

## Comandos básicos

|                     COMANDOS                      |              DESCRIPCIÓN                |
| :------------------------------------------------ | :-------------------------------------- |
| `kind create cluster --name toku`                 | Crea un nuevo clúster con nombre "toku" |
| `kind get clusters`                               | Muestra los clústers existentes.        |
| `kubectl cluster-info --context kind toku`        | Muestra info del clúster.               |
| `kind delete cluster --name toku`                 | Borra el clúster.                       |
| `kind load docker-image <imagen> --name toku`     | Carga una imagen a Kind.                |
| `docker exec -it toku-control-plane crictl image` | Ver las imágenes cargadas a kind.       |

## Configuración del clúster

`kind create cluster --config archivo.yaml`