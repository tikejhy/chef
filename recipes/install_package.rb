yum_repository 'beats' do
    description node['filebeat']['yum']['description']
    baseurl node['filebeat']['yum']['baseurl']
    gpgcheck node['filebeat']['yum']['gpgcheck']
    gpgkey node['filebeat']['yum']['gpgkey']
    enabled node['filebeat']['yum']['enabled']
    metadata_expire node['filebeat']['yum']['metadata_expire']
    action node['filebeat']['yum']['action']
  end

yum_package 'filebeat'

service 'filebeat' do
     supports [:start, :restart, :reload, :status]
     action [:enable, :start]
end

