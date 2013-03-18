ENV['ONE_AUTH'] = "#{node['opennebula']['one_auth_path']}/one_auth"
%w{/var/run/one /var/lock/one}.each do |dir|
    directory dir do
        owner "#{node['opennebula']['default_user']}"
        group "#{node['opennebula']['default_group']}"
        mode 0700
        action :create
    end
end

execute "oned" do
    command "/etc/init.d/one start"
    user "#{node['opennebula']['default_user']}"
    group "#{node['opennebula']['default_group']}"
    creates "/var/run/one/oned.pid"
    action :run
    only_if do
        File.exists?("/etc/init.d/one")
    end
end
