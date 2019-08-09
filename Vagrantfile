Vagrant.configure(2) do |config|
	config.vm.define "pyenv-box" do |devbox|
		devbox.vm.network "private_network", ip: "192.168.199.10"
		#devbox.vm.network "forwarded_port", guest: 3001, host: 1234
		#devbox.vm.network "forwarded_port", guest: 8080, host: 1235
		devbox.vm.box = "ubuntu/xenial64"
		#devbox.vm.provision "shell", path: "scripts/install.sh"
       		#devbox.vm.provision "file", source: "default.json", destination: "~/formio/config/default.json"
		devbox.vm.provision "shell", privileged: false, path: "scripts/install.sh"
    		devbox.vm.provider "virtualbox" do |v|
                config.vm.box_check_update = false
    		  v.memory = 4096
    		  v.cpus = 2

		end
	end
end