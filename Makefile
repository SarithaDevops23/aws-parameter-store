default:
	@rm -rf .terraform.tfstate
	@git pull
	@terraform init
	@terraform apply -auto-approve