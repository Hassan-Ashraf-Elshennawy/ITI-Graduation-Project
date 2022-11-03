# ITI Graduation Project

## the tools we used to build this infrastructure

1- Docker

2- Jenkins

3- Kubernetes

## Deploy backend application on kubernetes cluster using CI/CD  jenkins pipeline 
1. Implement secure Kubernetes cluster
2. Deploy and configure Jenkins on Kubernetes.
3. Deploy backend application on Kubernetes using Jenkins pipeline

  ![Screenshot from 2022-11-01 16-15-14](https://user-images.githubusercontent.com/111524157/199254549-866e427b-b1a0-4a50-8145-ffeecc2776e5.png)

## provision infrastructure using terraform

One VPC with two private subnets

Management subnet

nat and route to acess it to the internet -Private VM (bastion) to access GKE cluster
-firewall to allow ssh 2. Restricted subnet •  mangment subnet (private control plan)

### Provisioning
terraform init
terraform appy

![Screenshot from 2022-11-03 02-29-09](https://user-images.githubusercontent.com/111524157/199626850-3e616baa-053a-44c9-9260-7ebd594be3a5.png)
## connect vm  and config cluster

![Screenshot from 2022-11-03 02-33-32](https://user-images.githubusercontent.com/111524157/199627198-bf2ab1eb-ee91-480f-84ab-267fea71b76a.png)

## Install kubctl in vm instance

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
kubectl version --client --output=yaml

## Let’s deploy kubernetes yaml files

kubectl create namespace jenkins-ns1
kubectl config set-context --current –namespace=jenkins
kubectl create -f deployment.yaml
kubectl create -f jenkins-service.yml.yaml
![Screenshot from 2022-11-03 04-25-14](https://user-images.githubusercontent.com/111524157/199636890-6751585e-bb13-4f37-b795-65ba87ff8c3d.png)


![Screenshot from 2022-11-03 06-34-41](https://user-images.githubusercontent.com/111524157/199648284-05bb4455-eace-4794-b955-f1da5987497f.png)



## Jenkins link : http://34.171.159.63:8080

![Screenshot from 2022-11-03 06-33-06](https://user-images.githubusercontent.com/111524157/199648194-f4fcfd51-0138-4e1a-86a7-e42219b69aa3.png)


## create credentials for dockerhub

![Screenshot from 2022-11-03 06-37-07](https://user-images.githubusercontent.com/111524157/199648534-61a70e5d-5aa3-43b7-bd25-2d4e25818411.png)


![Screenshot from 2022-11-03 06-46-59](https://user-images.githubusercontent.com/111524157/199649780-5cbf18ba-fdd0-4d27-9030-d676a042b793.png)

![Screenshot from 2022-11-03 06-47-18](https://user-images.githubusercontent.com/111524157/199649794-06957722-dbf9-491a-bfb9-529a018f01fb.png)


### Pipline automated successfully

## Get IP:Port for the application

![Screenshot from 2022-11-03 07-39-12](https://user-images.githubusercontent.com/111524157/199656272-e1085d6a-0f2a-44dc-a050-49a9b78b7956.png)

![Screenshot from 2022-11-03 08-03-08](https://user-images.githubusercontent.com/111524157/199656720-1b413923-a121-47a0-8472-7cf0f0f3e7d4.png)

## Finallyyyyyy
## App link: http://34.133.126.189:3000/


![Screenshot from 2022-11-03 07-40-20](https://user-images.githubusercontent.com/111524157/199657013-8042b242-438b-4911-9ead-173cdf4ec587.png)





