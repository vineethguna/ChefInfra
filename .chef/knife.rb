current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vineethguna1993"
client_key               "/var/lib/jenkins/.chef/vineethguna1993.pem"
validation_client_name   "chefinfra-validator"
validation_key           "/var/lib/jenkins/.chef/chefinfra-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/chefinfra"
cache_type               'BasicFile'
cookbook_path            ["#{current_dir}/../cookbooks"]

