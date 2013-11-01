Vagrant.configure("2") do |config|
  config.vm.box = "centos64-x64-minimal"

  config.vm.provision :shell, :path => "cookbooks/httpd/install.sh"
  config.vm.provision :shell, :path => "cookbooks/php/install.sh"
  config.vm.provision :shell, :path => "cookbooks/appli/install.sh"

  config.vm.network :forwarded_port, guest: 81, host: 8181

  config.vm.synced_folder "traces", "/traces"
end
