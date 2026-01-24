output "instance_id" {
  value = cloudamqp_instance.rabbitmqinstance.id
}

output "instance_url" {
  value = cloudamqp_instance.rabbitmqinstance.url
}

output "instance_vhost" {
  value = cloudamqp_instance.rabbitmqinstance.vhost
}

output "instance_apikey" {
  value = cloudamqp_instance.rabbitmqinstance.apikey
}