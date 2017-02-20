package "httpd" do
    action :install
end

service "httpd" do
    action [ :enable, :start]
end

cookbook_file "/var/www/web.html" do
   source "web.html"
   mode "0644"
end