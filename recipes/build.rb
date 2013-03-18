execute "scons" do
    command "scons"
    cwd "#{node['opennebula']['src_path']}"
    user "#{node['opennebula']['default_user']}"
    group "#{node['opennebula']['default_group']}"
    action :run
end

execute "install" do
    command "./install.sh -u #{node['opennebula']['default_user']} -g #{node['opennebula']['default_group']}"
    cwd "#{node['opennebula']['src_path']}"
    user "root"
    group "root"
    creates "/usr/bin/one"
    action :run
end

%w{rack sinatra thin sequel sqlite3 amazon-ec2 uuidtools curb mysql net-ldap nokogiri}.each do |pkg|
    gem_package pkg do
        gem_binary("/usr/bin/gem")
        options("--no-ri --no-rdoc")
    end
end
