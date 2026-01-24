resource "cloudamqp_instance" "rabbitmqinstance" {
  name       = var.instance_name
  plan       = var.plan #Loyal Lemming / lemming
  region     = var.region
}

resource "cloudamqp_rabbitmq_configuration" "rabbitmqconfiguration" {
  instance_id = cloudamqp_instance.rabbitmqinstance.id
  log_exchange_level = "info"
}