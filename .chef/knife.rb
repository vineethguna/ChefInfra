current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vineethguna"
client_key               "/var/lib/jenkins/.chef/vineethguna.pem"
validation_client_name   "vineeth-validator"
validation_key           "/var/lib/jenkins/.chef/vineeth-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/vineeth"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

