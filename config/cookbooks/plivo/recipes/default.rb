execute "Start Freeswitch" do
  command "./usr/local/freeswitch/bin/freeswitch -nc"
end

execute "Start Plivo" do
  command "/etc/init.d/plivo start"
end

