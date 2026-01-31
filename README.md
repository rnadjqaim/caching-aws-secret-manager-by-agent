 # caching-aws-secret-manager-by-agent
aws doc for the aws secret manager agent : https://docs.aws.amazon.com/secretsmanager/latest/userguide/secrets-manager-agent.html


steps: 
1. iam (instance profile on ec2. (ec2-secret.json)
2. install the agent from ec2-secret.sh ( port 2773)
3. if u need it as service to run in demaon. ( this is an option )

sudo mkdir -p /opt/aws/secrets-agent
sudo cp aws_secretsmanager_agent /opt/aws/secrets-agent/agent
sudo chmod +x /opt/aws/secrets-agent/agent

go to etc folder to see all config 
 
 sudo systemctl daemon-reload
sudo systemctl enable --now secrets-agent
sudo systemctl status secrets-agent --no-pager


4. to test the connectivity you can creat dummy cred. then try to carl it for 300 sec or above to meaure how much its caching. 

