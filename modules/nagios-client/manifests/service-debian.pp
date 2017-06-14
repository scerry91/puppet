class nagios-client::service-debian {
service { 'nagios-nrpe-server':
        ensure => 'running',
        enable => true,
        require => Class['nagios-client::config-debian'],
}
}
