Description
===========

Install Zend Server

Platform
========
Debian, Ubuntu

Tested on:
Ubuntu 12.04

Attributes
==========

See the `attributes/server.rb` for default values.

* `node['zend_server']['php_version']` - The php version to install (5.3 or 5.4)

Usage
=====

For the server only, use the server (or default) recipe:

    { "run_list": ["recipe[zend-server::server]"] }

To install xdebug, use the xdebug recipe:
    { "run_list": ["recipe[zend-server::xdebug]"] }

To install phing, use the phing recipe:
    { "run_list": ["recipe[zend-server::phing]"] }

To install phpunit, use the phing recipe:
    { "run_list": ["recipe[zend-server::phpunit]"] }

To install phpdoc, use the phpdocumentor recipe:
    { "run_list": ["recipe[zend-server::phpdocumentor]"] }

To install composer, use the composer recipe:
    { "run_list": ["recipe[zend-server::composer]"] }

