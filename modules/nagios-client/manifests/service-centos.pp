class nagios-client::service-centos {
service { 'nrpe':
        ensure => 'running',
        enable => true,
        require => Class['nagios-client::config-centos'],
}
}
