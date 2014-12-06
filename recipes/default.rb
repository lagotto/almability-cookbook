# install and configure dependencies
include_recipe "apt"
include_recipe "ruby"

# install nginx and create configuration file and application root
passenger_nginx ENV['APPLICATION'] do
  user            ENV['DEPLOY_USER']
  group           ENV['DEPLOY_GROUP']
  action          :config
end
