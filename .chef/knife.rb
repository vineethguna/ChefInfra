current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vineethguna93"
client_key               "/var/lib/jenkins/.chef/vineethguna93.pem"
validation_client_name   "vineeth-validator"
validation_key           "/var/lib/jenkins/.chef/vineethguna-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/vineethguna"
cache_type               'BasicFile'
cookbook_path            ["#{current_dir}/../cookbooks"]

