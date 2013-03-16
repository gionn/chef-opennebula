directory "#{node['opennebula']['one_auth_path']}" do
    owner "#{node['opennebula']['default_user']}"
    group "#{node['opennebula']['default_group']}"
    mode 0700
    action :create
end

file "#{node['opennebula']['one_auth_path']}/one_auth" do
    owner "#{node['opennebula']['default_user']}"
    group "#{node['opennebula']['default_group']}"
    mode "0600"
    action :create_if_missing
    content "#{node['opennebula']['oneadmin_username']}:#{node['opennebula']['oneadmin_password']}"
end
