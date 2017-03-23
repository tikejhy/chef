default['filebeat']['version'] = '1.2.3'
default['filebeat']['disable_service'] = false
default['filebeat']['package_url'] = 'auto'
default['filebeat']['package_force_overwrite'] = true

default['filebeat']['notify_restart'] = true
default['filebeat']['conf_dir'] = '/etc/filebeat'
default['filebeat']['conf_file'] = '/etc/filebeat/filebeat.yml'
default['filebeat']['prospectors_dir'] = '/etc/filebeat/conf.d/'
default['filebeat']['yum']['baseurl'] = 'https://packages.elastic.co/beats/yum/el/$basearch'
default['filebeat']['yum']['description'] = 'Elastic Beats Repository'
default['filebeat']['yum']['gpgcheck'] = true
default['filebeat']['yum']['enabled'] = true
default['filebeat']['yum']['gpgkey'] = 'https://packages.elasticsearch.org/GPG-KEY-elasticsearch'
default['filebeat']['yum']['metadata_expire'] = '3h'
default['filebeat']['yum']['action'] = :create

default['filebeat']['service']['retries'] = 0
default['filebeat']['service']['retry_delay'] = 2

default['filebeat']['input_type'] = 'log'
default['filebeat']['document_type'] = 'syslog'
default['filebeat']['path_public_zone'] = 'public-zone'
default['filebeat']['path_private_zone'] = 'private-zone'
default['filebeat']['path_internal_zone'] = 'internal-zone'
default['filebeat']['registry'] = '/var/lib/filebeat/registry'
default['filebeat']['sys_log_file'] = ['/var/log/*.log', '/var/log/messages']
default['filebeat']['apache_log_file'] = ['/var/log/httpd/*error_log', '/var/log/httpd/*access_log']
