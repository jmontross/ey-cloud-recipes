# Only run on app server instances.
if ['app','app_master'].include?(node[:instance_role]) then
  cron "Make /etc/chef/dna.json readable" do 
    minute "*/5" 
    command "chmod a+r /etc/chef/dna.json" 
  end 
end