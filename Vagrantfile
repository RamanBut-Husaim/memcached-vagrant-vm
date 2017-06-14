VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos/7"
  config.vm.network :forwarded_port, guest: 11211, host: 11211, host_ip: "127.0.0.1"

  config.vm.provider :virtualbox do |vbox|
    vbox.customize ["modifyvm", :id, "--memory", 2048]
    vbox.gui = true
  end

  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.provision :shell, :path => "init.sh"
end