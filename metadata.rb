name              "almability"
maintainer        "Martin Fenner"
maintainer_email  "mfenner@plos.org"
license           "Apache 2.0"
description       "Almability configuration"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.7"
depends           "apt"

# our own cookbooks
depends           "ruby", "~> 0.6.0"
depends           "dotenv", "~> 0.1.0"
depends           "passenger_nginx", "~> 0.4.0"
depends           "capistrano", "~> 0.7.0"

%w{ ubuntu }.each do |platform|
  supports platform
end
