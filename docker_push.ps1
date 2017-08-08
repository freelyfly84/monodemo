#push to Amazon ECR (EC2 Container Registry)

Invoke-Expression -Command (aws ecr get-login --no-include-email --region ap-northeast-1)
docker build -t monodemo .
docker tag monodemo:latest 915527427225.dkr.ecr.ap-northeast-1.amazonaws.com/monodemo:latest
docker push 915527427225.dkr.ecr.ap-northeast-1.amazonaws.com/monodemo:latest