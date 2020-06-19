# Mautic
[Mautic](https://www.mautic.org/) open source marketing automation tool.


## TL;DR;
Add SOWL repository to local Helm
```shell
helm repo add sowl https://scholarshipowl.github.io/charts
```

Install Mautic Helm chart
```shell
helm install mautic-release sowl/mautic
```

## Introduction
This chart bootstraps a [Mautic](https://www.mautic.org) deployment to Kubernetes cluster using [Helm](http://helm.sh).

## Parameters
The following table is the configurations for Mautic deployment.

### Common parameters
 
| Parameter                 | Description                                     | Default                                                 |
|---------------------------|-------------------------------------------------|---------------------------------------------------------|
| `nameOverride`            | String to partially override wordpress.fullname | `nil`                                                   |
| `fullnameOverride`        | String to fully override wordpress.fullname     | `nil`                                                   |
| `clusterDomain`           | Default Kubernetes cluster domain               | `cluster.local`                                         |

### Mautic parameters

| Parameter                   | Description                              | Default             |
|-----------------------------|------------------------------------------|---------------------|
| `image.repository`          | Mautic docker image repository           | `mautic/mautic`     |
| `image.pullPolicy`          | Mautic image pull policy                 | `IfNotPresent`      |
| `image.tag`                 | Mautic image tag                         | `latest`            |
| `service.type`              | Kubernetes Service type                  | `ClusterIP`         |
| `service.port`              | Service HTTP port                        | `80`                |
| `persistence.enabled`       | Enable persistence using PVC             | `true`              |
| `persistence.existingClaim` | Enable persistence using an existing PVC | `nil`               |
| `persistence.storageClass`  | PVC Storage Class                        | `nil` (use default) |
| `persistence.accessMode`    | PVC Access Mode                          | `ReadWriteOnce`     |
| `persistence.size`          | PVC Storage Request                      | `10Gi`              |
| `nodeSelector`              | Node labels for pod assignment           | `{}`                |
| `tolerations`               | Tolerations for pod assignment           | `[]`                |
| `affinity`                  | Affinity for pod assignment              | `{}`                |
| `replicaCount`              | Number of Mautic Pods to run             | `1`                 |

### Ingress parameters

| Parameter                         | Description                                              | Default                        |
|-----------------------------------|----------------------------------------------------------|--------------------------------|
| `ingress.enabled`                 | Enable ingress controller resource                       | `false`                        |
| `ingress.hostname`                | Default host for the ingress resource                    | `wordpress.local`              |
| `ingress.annotations`             | Ingress annotations                                      | `[]` (evaluated as a template) |