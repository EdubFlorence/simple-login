aws ecr get-login-password --profile=prod --region us-east-1 | docker login --username AWS --password-stdin 953809244562.dkr.ecr.us-east-1.amazonaws.com

docker build --platform linux/amd64 -t tf-us-simple-login-ecr .

# The repository had to be manually edited to disable immutable tags, which will get reverted the next time terraform is applied
# and therefore need to be changed for this to work as-is
docker tag tf-us-simple-login-ecr:latest 953809244562.dkr.ecr.us-east-1.amazonaws.com/tf-us-simple-login-ecr:latest

docker push 953809244562.dkr.ecr.us-east-1.amazonaws.com/tf-us-simple-login-ecr:latest
