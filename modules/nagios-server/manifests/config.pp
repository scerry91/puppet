class nagios-server::config {

file { '/etc/nagios3/htpasswd.users':
	notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/htpasswd.users',
  }


file { '/etc/nagios3/conf.d/nagios.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/nagios.cfg',
  }
file { '/etc/nagios3/conf.d/dns-1.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/dns-1.cfg',
  }
file { '/etc/nagios3/conf.d/dns-2.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/dns-2.cfg',
  }
file { '/etc/nagios3/conf.d/ldapmaster.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/ldapmaster.cfg',
  }
file { '/etc/nagios3/conf.d/mailserver-1.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/mailserver-1.cfg',
  }
file { '/etc/nagios3/conf.d/mysql-server-1.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/mysql-server-1.cfg',
  }
file { '/etc/nagios3/conf.d/webserver-1.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/webserver-1.cfg',
  }
file { '/etc/nagios3/conf.d/puppet-master.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/puppet-master.cfg',
  }
file { '/etc/nagios3/conf.d/proxmox-.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/proxmox-1.cfg',
  }
file { '/etc/nagios3/conf.d/proxmox-2.cfg':
      notify => Service['nagios3'],
      require => Package['nagios3'],
      ensure  => present,
      source  => 'puppet:///modules/nagios-server/proxmox-2.cfg',
  }




}
