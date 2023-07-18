# KubeGhost

A low-config Ghost deployment template for Kubernetes.

Run `up.sh` to deploy the website and use ingress IP to configure the DNS name on your DNS provider.

To clean up everthing, run `down.sh`.

> It's only tested on Digital Ocean Kubernetes but it should work
> for other cloud provider / bare metal as well provided that they
> support the resources we used.

## Prerequisite

- A K8s cluster
- MySQL Database
- Rename `secret.sample.yml` to `secret.yml` and configure your credentials
- Rename `<https://your-host-name.domain.com>` in `deployment.yml` to your actual domain
- Rename `<your-database-name>` in `deployment.yml` to your MySQL database name

## Configuration

We use ENV based configuration to override production configuration.

View all available options [here](https://ghost.org/docs/config#configuration-options).

We currently use them to configure DB connections and Mailgun integration.

## Check in secret

We recommend checking in the encrypted version of `0-secret.yml` to the repository directly for ease of development.

We recommend using [Zypher](https://github.com/vtno/zypher) for file encryption.

```shell
# generate key
zypher keygen
zypher encrypt -f 0-secret.yml -o 0-secret.yml.enc
```

This repository also ignore `zypher.key` file by default. Do not check in or share the key to non-trust individual.
