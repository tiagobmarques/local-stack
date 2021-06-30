### Prerequisites
* Docker
* Terraform
* AWS CLI

### How to run the application locally 
First thing first, fire up localstack.

```
docker run -p 4566:4566 localstack/localstack
```

Let’s deploy this Terraform configuration.
```
terraform init && terraform plan -out="myplan"
```

If you get a similar output as the command above, go ahead and issue the command below
```
terraform apply -auto-approve myplan
```

If you got the following output (see below), then you did everything correctly.
```
aws dynamodb list-tables --endpoint-url http://localhost:4566
```

To clean up, simply use Terraform and provide the command below.
```
terraform destroy -auto-approve
```