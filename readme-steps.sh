# build a docker image
docker build -t codepipeline-demo .

# login to ECR (change for your region)
$(aws ecr get-login --no-include-email --region eu-east-1 --profile aws-devops)

# tag image (change aws account number)
docker tag codepipeline-demo:latest 1234567890.dkr.ecr.eu-west-1.amazonaws.com/codepipeline-demo:latest

# push image
docker push 1234567890.dkr.ecr.eu-west-1.amazonaws.com/codepipeline-demo:latest

# pull image
docker pull 1234567890.dkr.ecr.eu-west-1.amazonaws.com/codepipeline-demo:latest