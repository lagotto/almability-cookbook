# install and configure dependencies
include_recipe "apt"
include_recipe "ruby"

# load .env configuration file with ENV variables
# copy configuration file to shared folder
dotenv node["application"] do
  dotenv          node["dotenv"]
  action          :nothing
end.run_action(:load)

# install nginx and create configuration file and application root
passenger_nginx ENV['APPLICATION'] do
  user            ENV['DEPLOY_USER']
  group           ENV['DEPLOY_GROUP']
  action          :config
end
