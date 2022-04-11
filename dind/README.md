# Docker in Docker (DinD)
[Docker](https://www.docker.com) is containerization software designed to make it easier to create, deploy and run applications.

DinD runs docker daemon in kubernetes, allowing us to build and store image in K8S cluster.

## TL;DR;
Add SOWL repository to local Helm
```shell
helm repo add sowl https://scholarshipowl.github.io/charts
```

Install DinD Helm chart
```shell
helm install dind sowl/dind
```

## Introduction
This chart bootstraps a [Docker in Docker](https://hub.docker.com/_/docker) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Helm 3
- Kubernetes 1.15+
- PV provisioner support in the underlying infrastructure

## Parameters
The following table is the configurations for Mautic deployment.

### Common parameters

| Parameter                 | Description                                     | Default                                                 |
|---------------------------|-------------------------------------------------|---------------------------------------------------------|
| `nameOverride`            | String to partially override mautic.fullname | `nil`                                                   |
| `fullnameOverride`        | String to fully override mautic.fullname     | `nil`                                                   |

### Mautic parameters

| Parameter                   | Description                              | Default             |
|-----------------------------|------------------------------------------|---------------------|
| `image.repository`          | DinD docker image repository             | `docker`            |
| `image.pullPolicy`          | DinD image pull policy                   | `IfNotPresent`      |
| `image.tag`                 | Mautic image tag                         | `20.10.14-dind`     |
| `service.type`              | Kubernetes Service type                  | `ClusterIP`         |
| `service.port`              | Service port                             | `2375`              |
| `persistence.enabled`       | Enable persistence using PVC             | `true`              |
| `persistence.existingClaim` | Enable persistence using an existing PVC | `nil`               |
| `persistence.storageClass`  | PVC Storage Class                        | `nil` (use default) |
| `persistence.accessMode`    | PVC Access Mode                          | `ReadWriteOnce`     |
| `persistence.size`          | PVC Storage Request                      | `10Gi`              |
| `nodeSelector`              | Node labels for pod assignment           | `{}`                |
| `tolerations`               | Tolerations for pod assignment           | `[]`                |
| `affinity`                  | Affinity for pod assignment              | `{}`                |
