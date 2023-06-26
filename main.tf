resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params"{

	default=[
			{name = "roboshop.{{env}}.frontend.catalogue_url", value = "http://catalogue-{{env}}.devops23.store:8080/", type="String"},
			{name = "roboshop.{{env}}.frontend.user_url", value = "http://user-{{env}}.devops23.store:8080/", type="String"},
			{name = "roboshop.{{env}}.frontend.cart_url", value = "http://cart-{{env}}.devops23.store:8080/", type="String"},
			{name = "roboshop.{{env}}.frontend.shipping_url", value = "http://shipping-{{env}}.devops23.store:8080/", type="String"},
			{name = "roboshop.{{env}}.frontend.payment_url", value = "http://payment-{{env}}.devops23.store:8080/", type="String"},
	
			{name = "roboshop.{{env}}.catalogue.mongo_url", value = "mongodb://mongodb-{{env}}.devops23.store:27017/catalogue", type="String"},

			{name = "roboshop.{{env}}.user.mongo_url", value = "mongodb://mongodb-{{env}}.devops23.store:27017/users", type="String"},
			{name = "roboshop.{{env}}.user.redis_host", value = "redis-{{env}}.devops23.store", type="String"},

			{name = "roboshop.{{env}}.cart.redis_host", value = "redis-{{env}}.devops23.store", type="String"},
			{name = "roboshop.{{env}}.cart.catalogue_host", value = "catalogue-{{env}}.devops23.store", type="String"},
			{name = "roboshop.{{env}}.cart.catalogue_port", value = "8080", type="String"},

			{name = "roboshop.{{env}}.shipping.cart_endpoint", value = "cart-{{env}}.devops23.store:8080", type="String"},
			{name = "roboshop.{{env}}.shipping.db_host", value = ""mysql-{{env}}.devops23.store", type="String"}








]
}

variable "env" {}


