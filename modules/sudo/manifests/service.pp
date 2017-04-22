class sudo::service {
service { 'sudo':
        ensure => 'running',
        enable => true,
        require => Class['sudo::config'],
}
}
