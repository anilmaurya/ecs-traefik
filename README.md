# ecs-traefik

## Deploy Traefik on ECS

### Run following command in console

export AWS_REGION='YOUR_AWS_REGION'

export AWS_ACCOUNT_ID='YOUR_AWS_ACCOUNT_ID'

export ECR_REPO_NAME='YOUR_ECR_REPO_NAME'

(aws ecr create-repository --repository-name $ECR_REPO_NAME) || true

eval $(aws ecr get-login --no-include-email --region $AWS_REGION)

docker build -t $ECR_REPO_NAME:latest .

docker tag $ECR_REPO_NAME:latest $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:latest

docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:latest
