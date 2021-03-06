require 'rake'

# for debug
#nowrite true

# hosts definition
nodename = 'base'

desc 'same as build'
task :default => 'build'

desc 'same as clean:all'
task :clean => 'clean:all'

namespace :clean do

  desc 'clean all environment'
  task :all do
    Rake.application.in_namespace(:clean) {|n| n.tasks.each {|t| t.invoke}}
  end

  desc 'remove log-files'
  task :log do
    Dir.glob('log/*.log').each do |f|
      rm f
    end
  end

  desc 'packer fix template.json'
  task :json do
    mv 'template.json', 'temp.json'
    sh 'packer fix temp.json > template.json'
    rm 'temp.json'
  end

 desc 'remove packer-workdir'
 task :packer_work do
   packer_work = 'output-virtualbox-iso'
   rm_rf packer_work if Dir.exist?(packer_work)
 end

  desc 'remove box'
  task :box do
    if `vboxmanage list vms`.match(/^\"#{nodename}\" /)
        sh "vboxmanage unregistervm #{nodename} --delete"
    end
    vm_dir = "#{ENV['USERPROFILE']}/VirtualBox VMs/#{nodename}"
    rm_rf vm_dir if Dir.exist?(vm_dir)
  end

  desc 'remove box_file'
  task :box_file do
    box_file = "#{nodename}.box"
    rm box_file if File.exist?(box_file)
  end

end

desc 'packer build'
task :build do
  Dir.mkdir('log') unless Dir.exist?('log')
  log = Time.now.strftime("log/%Y%m%d-%H%M%S.log")
  sh "echo --- packer build requested at #{Time.now} --- >> #{log}"
  sh "packer build template.json >> #{log}"
  sh "echo --- packer build finished at #{Time.now} --- >> #{log}"
end

desc 'packer build with debug-log'
task :debug do
  Dir.mkdir('log') unless Dir.exist?('log')
  log = Time.now.strftime("log/%Y%m%d-%H%M%S.log")
  sh "echo --- packer build requested at #{Time.now} --- >> #{log}"
  sh "set PACKER_LOG=1 && packer build template.json >> #{log} 2>&1"
  sh "echo --- packer build finished at #{Time.now} --- >> #{log}"
end

desc 'same as box:reload'
task :box => 'box:reload'

namespace :box do

  desc 'vagrant box add'
  task :add do
    sh "vagrant box add #{nodename} #{nodename}.box"
  end

  desc 'seaquence of box:remove, box:add and box:up'
  task :reload => ['remove', 'add', 'up']

  desc 'vagrant box remove'
  task :remove do
    sh "vagrant box remove #{nodename}"
  end

  desc 'vagrant up'
  task :up do
    sh 'vagrant up'
  end

end

desc 'login with TeraTerm SSH'
task :ssh do
  host, port, user, keyfile = nil, nil, nil, nil
  `vagrant ssh-config`.each_line do |l|
    host = l.sub('HostName','').strip if l.strip.match(/^HostName\s/)
    port = l.sub('Port','').strip if l.strip.match(/^Port\s/)
    user = l.sub('User','').strip if l.strip.match(/^User\s/)
    keyfile = l.sub('IdentityFile','').strip if l.strip.match(/^IdentityFile\s/)
  end
  spawn({"PATH" => 'C:\Program Files (x86)\teraterm'}, "ttermpro #{host}:#{port} /ssh /auth=publickey /user=#{user} /keyfile=#{keyfile}")
end
