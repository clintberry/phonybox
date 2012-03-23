
#Update dialplan xml with this template
template "/usr/local/freeswitch/conf/dialplan/default.xml" do
  source "dialplan-default.xml.erb"
  mode 0755
  owner "root"
  group "root"
end

#update plivo conf with this template
template "/usr/local/plivo/etc/plivo/default.conf" do
  source "plivo-default.conf.erb"
  mode 0755
  owner "root"
  group "root"
end

execute "Start Freeswitch" do
  command "/usr/local/freeswitch/bin/freeswitch -nc"
end

execute "Start Plivo" do
  command "/etc/init.d/plivo start"
end

