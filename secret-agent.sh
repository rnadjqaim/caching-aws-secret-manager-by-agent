docker run -d --name sm-agent \
  --restart always \
  -p 2773:2773 \
  -e AWS_REGION=eu-central-1 \
  -e AWS_TOKEN="34dvb**********************" \
  public.ecr.aws/aws-secrets-manager/aws-secrets-manager-agent:latest
#port 2773