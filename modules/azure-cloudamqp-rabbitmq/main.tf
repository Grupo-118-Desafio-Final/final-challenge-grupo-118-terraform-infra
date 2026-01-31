resource "cloudamqp_instance" "rabbitmqinstance" {
  name       = var.instance_name
  plan       = var.plan #Loyal Lemming / lemming
  region     = var.region
}