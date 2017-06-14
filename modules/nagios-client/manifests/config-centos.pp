class nagios-client::config-centos {

file { '/etc/nagios/nrpe.cfg':
      notify => Service['nrpe'],	
      require => Package['nrpe'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-client/nrpe.cfg-centos',
  }
}
