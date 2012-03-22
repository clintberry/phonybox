execute "Invites folder" do
  command "./usr/local/freeswitch/bin/freeswitch -nc"
end

execute "Invites folder" do
  command "/etc/init.d/plivo start"
end

