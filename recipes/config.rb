rolename = node.roles

template '/etc/filebeat/filebeat.yml' do
   source 'filebeat-default.yaml.erb'
   mode '0440'
   owner 'root'
   group 'root'
   variables(
    path_sys_log_file: node['filebeat']['sys_log_file'],
    path_apache_log_file: node['filebeat']['apache_log_file'],
    input_type: node['filebeat']['input_type'],
    document_type: node['filebeat']['document_type'],
    services: node['filebeat']['services'], 
    my_services: node['filebeat']['services'],
    my_public_zone: node['filebeat']['path_public_zone'],
    my_private_zone: node['filebeat']['path_private_zone'],
    my_internal_zone: node['filebeat']['path_internal_zone'],
    path_registry: node['filebeat']['registry'],
    :rolename => rolename,

)
end
