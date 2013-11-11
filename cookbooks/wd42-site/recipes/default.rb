# TODO: nginx config

#
# Install the site.
#
directory node['wd42_site']['dir'] do
  recursive true
end

include_recipe 'git'

git node['wd42_site']['dir'] do
  repository 'https://github.com/wd42/wd42-site'
  reference "master"
  action :sync
end

bash 'npm install' do
  code 'npm install'
  cwd node['wd42_site']['dir']
  user 'root'
  action :run
#  action :nothing
#  subscribes :sync, "git[#{node['wd42_site']['dir']}]", :immediately
end

#
# Configure upstart service.
#
template "/etc/init/wd42-site.conf" do
  mode 0644
  owner "root"
  group "root"
end

service "wd42-site" do
  provider Chef::Provider::Service::Upstart
  supports :restart => true, :start => true, :stop => true
  action [:enable, :start]
  subscribes :reload, "cookbook_file[/etc/init/wd42-site.conf]", :immediately
end
