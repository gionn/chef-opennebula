execute "oned" do
    command "one start"
    user "#{node['opennebula']['default_user']}"
    group "#{node['opennebula']['default_group']}"
    creates "/var/run/one/oned.pid"
    action :run
end
