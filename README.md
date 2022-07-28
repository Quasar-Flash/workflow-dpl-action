# workflow-dpl-action

Deployment workflow for AWS EKS.

## How to use it

Set the required secrets:

```sh
AWS_ACCESS_KEY_ID:
AWS_SECRET_ACCESS_KEY:
CLUSTER_NAME:
ECR_REGISTRY:
```

Create a workflow inside your project and import this:

```yml
name: Deploy Production
on:
  workflow_dispatch:
  push:
    branches:
      - master
jobs:
  Deploying:
    uses: Quasar-Flash/workflow-dpl-action/.github/workflows/deployment.yml@master
    with:
      environment: production
      environment_url: https://url.com
      release: true # not required, use it only for production
    secrets: inherit
```

Set a project version at the file `.version` with only the numbers:

```bash
touch .version && echo "1.0.0" > .version
```

Put the deployment AWS documents at the folder `/deployment`. The deployment file needs to have the same name as the environment, like:

```bash
deployment/production.yml
```

Create a `CHANGELOG.md` file following the pattern as described at [Keep a Changelog](https://github.com/olivierlacan/keep-a-changelog)

```md
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2022-07-25

### Added

- New visual identity by Arthurzão.
- Version navigation.
- Links to latest released version in previous versions.
- "Why keep a changelog?" section.
```

## Docker Image - Workflow

- To build and run the workflow image: [DEPLOYING.md](DEPLOYING.md)
