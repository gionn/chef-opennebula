
%w{scons libsqlite3-dev libxmlrpc-c3-dev libxml2-dev libxslt1-dev libssl-dev libcurl4-openssl-dev libmysqlclient-dev rake sqlite3}.each do |pkg|
    package pkg do
        action :install
    end
end

