# Kubernetes

## Tabla de contenido

- [Kubernetes](#kubernetes)
  - [Tabla de contenido](#tabla-de-contenido)
  - [Algunos comandos](#algunos-comandos)
    - [Obtener información](#obtener-información)
    - [Crear un servicio](#crear-un-servicio)
    - [Editar servicios](#editar-servicios)
  - [Archivos de configuración](#archivos-de-configuración)
    - [Metrics](#metrics)

## Algunos comandos

### Obtener información

```bash
# Muestra los nodos del clúster
kubectl get nodes

# Muestra los PODs corriendo
kubectl get pods
kubectl get pods -o wide

# Muestra los servicios
kubectl get services

# Muestra las replicas
kubectl get replicaset

# Obtener logs
kubectl logs <pod>

# Descripción de las confifuraciones del pod
kubectl describe pod <pod>
```

### Crear un servicio

```bash
# Comando utilizado para lanzar instrucciones a kubelet
kubectl create deploymentkubectl

# Ejemplo del despliegue de una imagen de nginx de nombre "nginx-test"
kubectl create deployment nginx-test --image=nginx

# Una mejor forma de correr un servicio es a través de un archivo con las configuraciones
kubectl apply -f config-file.yaml
```

### Editar servicios

```bash
# Edita un servicio activo (no es la mejor práctica)
kubectl edit deployment nginx-text

# Correr comandos dentro del contenedor
kubectl exec -it <pod> -- <comando>
kubectl exec -it <pod> -- bash
```

## Archivos de configuración

Todos los archivos de configuración comienzan por una cabecera que incluye la versión y su tipo.

```bash
# Cabecera ejemplo de un deployment
apiVersion: apps/v1
kind: Deployment # Aquí podría ser un "Service" u otro tipo.
```

Cada archivo de configuración está conformado por 3 partes:

1. metadata,

    ```bash
    # Los metadatos sirven entre otras cosas para identificar y correlacionar objetos con etiquetas.
    metadata:
      name: nginx-deployment
    ```

2. specification,

   ```bash
   # Las especificaciones son únicas para cada tipo de config-file 
   spec:
     containers:
     - name: nginx
       image: nginx:1.7.9
       ports:
       - containerPort: 80
    ```

3. status

    ```bash
    # Es donde se indica el estado deseado, i.e. 2 réplicas.
    spec:
      replicas: 2
    ```

## Darla salida a un servicio interno

```bash
minikube service mongo-express-service
```

### Metrics

`kubectl top` The kubectl top command returns current CPU and memory usage for a cluster’s pods or nodes, or for a particular pod or node if specified.
