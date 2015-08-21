# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 10019, host: 10019
  config.vm.network "forwarded_port", guest: 10018, host: 10018
  config.vm.network "forwarded_port", guest: 10017, host: 10017

  config.vm.network "forwarded_port", guest: 10029, host: 10029
  config.vm.network "forwarded_port", guest: 10028, host: 10028
  config.vm.network "forwarded_port", guest: 10027, host: 10027

  config.vm.network "forwarded_port", guest: 10039, host: 10039
  config.vm.network "forwarded_port", guest: 10038, host: 10038
  config.vm.network "forwarded_port", guest: 10037, host: 10037

  config.vm.network "forwarded_port", guest: 10049, host: 10049
  config.vm.network "forwarded_port", guest: 10048, host: 10048
  config.vm.network "forwarded_port", guest: 10047, host: 10047

  config.vm.network "forwarded_port", guest: 10059, host: 10059
  config.vm.network "forwarded_port", guest: 10058, host: 10058
  config.vm.network "forwarded_port", guest: 10057, host: 10057

  config.vm.network "forwarded_port", guest: 10069, host: 10069
  config.vm.network "forwarded_port", guest: 10068, host: 10068
  config.vm.network "forwarded_port", guest: 10067, host: 10067


  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true
      # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.cpus = "2"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
  config.vm.provision :shell, path: "bootstrap.sh"
end
