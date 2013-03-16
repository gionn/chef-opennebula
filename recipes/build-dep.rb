
%w{scons libsqlite3-dev libxmlrpc-c3-dev libxml2-dev libssl-dev }.each do |pkg|
    package pkg do
        action :install
    end
end

