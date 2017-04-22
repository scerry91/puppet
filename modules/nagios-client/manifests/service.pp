class nagios-client::service {
service { 'nagios-nrpe-server':
        ensure => 'running',
        enable => true,
        require => Class['nagios-client::config'],
}
}
