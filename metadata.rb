name              "zend-server"
maintainer        "ContinuousPHP"
maintainer_email  "team@continuousphp.com"
license           "Apache 2.0"
description       "Installs and configures zend server"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.1"
recipe            "zend-server", "Includes the server recipe to configure the base server"
recipe            "zend-server::xdebug", "Installs the xdebug pecl package"
recipe            "zend-server::phing", "Installs the phing pear package"
recipe            "zend-server::phpdocumentor", "Installs the phpdoc pear package"
recipe            "zend-server::phpunit", "Installs the phpunit pear package"
recipe            "zend-server::composer", "Installs composer executable"

%w{ debian ubuntu }.each do |os|
  supports os
end

depends "apt"
depends "build-essential"
depends "conf"

attribute "zend_server/php_version",
  :display_name => "PHP version",
  :description => "version of php to install (5.3 or 5.4)",
  :default => "5.4"