Vagrant.require_version ">= 1.5"

def which(cmd)
    exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
    ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each { |ext|
            exe = File.join(path, "#{cmd}#{ext}")
            return exe if File.executable? exe
        }
    end
    return nil
end

Vagrant.configure("2") do |config|
    config.vm.provider :virtualbox do |v|
        v.name = "test_box"
        v.customize [
            "modifyvm", :id,
            "--name", "test_box",
            "--memory", 4096,
            "--natdnshostresolver1", "on",
            "--cpus", 4,
            "--natnet1", "192.45.17/24",
            "--cableconnected1", "on"
        ]
    end

    config.vm.define "test_box"
    config.vm.box = "ubuntu/trusty64"

    config.vm.network :private_network, ip: "192.168.15.16"
    config.vm.network "forwarded_port", guest: 9000, host: 49000
    config.ssh.forward_agent = true

    if which('ansible-playbook')
        config.vm.provision "ansible" do |ansible|
            print "### d e n k w e r k <====> T E S T - B O X\n"

            # disable git checkout per default on provisioning
            run_git = 0

            # disable composer install for projects per default on provisioning
            run_composer = 0

            # local user is the default git user
            git_user = ENV['USER']

            ansible.playbook = "ansible/playbook.yml"
            ansible.inventory_path = "ansible/inventories/dev"
            ansible.limit = 'all'
            ansible.extra_vars = {
                git_user: git_user,
                run_git: run_git,
                run_composer: run_composer
            }
        end
    else
        config.vm.provision :shell, path: "ansible/windows.sh", args: ["tuiblue-box.local"]
    end

    config.vm.synced_folder "./", "/vagrant", type: "nfs"
end


def provisioned?(vm_name='test_box', provider='virtualbox')
  File.exists?(File.join(File.dirname(__FILE__),".vagrant/machines/#{vm_name}/#{provider}/action_provision"))
end

def explicit_provisioning?()
   ARGV.include?("--provision") || ARGV.include?("provision")
end
