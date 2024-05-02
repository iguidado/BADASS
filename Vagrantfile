Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.memory = "2048"
    vb.cpus = "2"
end

  config.vm.provision "file", source: "./P1/user/Dockerfile", destination: "~", run: "always"
  config.vm.provision "file", source: "./P1/router/Dockerfile", destination: "~", run: "always"
  config.vm.provision "shell", path: "Scripts/install_dependencies.sh"
end
