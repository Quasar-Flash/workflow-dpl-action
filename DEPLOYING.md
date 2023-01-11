# Depĺoyment

## AWS ECS

* Log into the Hub from your local terminal:

```bash
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws
```

* Build a new version of the image:

```bash
docker build -t deployment-workflow .
```

* Upload to the hub:

```bash
docker tag deployment-workflow:latest public.ecr.aws/qflash/deployment-workflow:latest
docker tag deployment-workflow:latest public.ecr.aws/qflash/deployment-workflow:$(cat .version)
docker push public.ecr.aws/qflash/deployment-workflow:latest
docker push public.ecr.aws/qflash/deployment-workflow:$(cat .version)
```
