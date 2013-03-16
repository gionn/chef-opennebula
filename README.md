chef-opennebula
===============

My very first cookbook for installing opennebula (actually for using it in vagrant)

The actual recipes included in this cookbook are:
* **opennebula::build-dep**   Install the required libraries for building (tested on Ubuntu 12.04)
* **opennebula::build**       Launch scons and execute the install.sh script
* **opennebula::oneadmin**    Setup the one_auth file for oneadmin credentials
* **opennebula::start**       Launch the oned daemon

A few [attributes](https://github.com/gionn/chef-opennebula/blob/master/attributes/default.rb) are also available.
