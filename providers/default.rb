
action :grant do
  username = new_resource.username
  
  cookbook_file "#{Chef::Config[:file_cache_path]}/Grant-LogOnAsService.ps1" do
    source 'Grant-LogOnAsService.ps1'
    cookbook 'grant_logon_as_service'
    action :create
  end

  batch "grant logon as a service to #{new_resource.username}" do
    cwd Chef::Config[:file_cache_path]
    code <<-EOH
        powershell -ExecutionPolicy Bypass ./Grant-LogOnAsService.ps1 -userAlias #{new_resource.username} -userDomain #{new_resource.domain}
        if %ERRORLEVEL% == 0 echo "Service logon access to #{new_resource.username} granted" > "#{Chef::Config[:file_cache_path]}\\logon_#{new_resource.username}.guard"
    EOH
    not_if {::File.exists?("#{Chef::Config[:file_cache_path]}\\logon_#{new_resource.username}.guard")}
  end
  
end
