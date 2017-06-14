class nagios-client::config-debian {

file { '/etc/nagios/nrpe.cfg':
      notify => Service['nagios-nrpe-server'],	
      require => Package['nagios-nrpe-server'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-client/nrpe.cfg',
  }
file { '/usr/lib/nagios/plugins/check_puppet_agent':
      mode    => '0755',
      notify => Service['nagios-nrpe-server'],
      require => Package['nagios-nrpe-server'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-client/check_puppet_agent',
  }

file { '/usr/lib/nagios/plugins/check_mysql_connections':
      mode    => '0755',
      notify => Service['nagios-nrpe-server'],
      require => Package['nagios-nrpe-server'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-client/check_mysql_connections',
  }
}
