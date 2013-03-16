ENV['ONE_AUTH'] = "#{node['opennebula']['one_auth_path']}/one_auth"

execute "oned" do
    command "/usr/bin/one start"
    user "#{node['opennebula']['default_user']}"
    group "#{node['opennebula']['default_group']}"
    creates "/var/run/one/oned.pid"
    action :run
end
