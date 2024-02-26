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
concurrency:
  group: ${{ github.workflow }}
  cancel-in-progress: true
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

## Docker Image - Workflow

- To build and run the workflow image: [DEPLOYING.md](DEPLOYING.md)
