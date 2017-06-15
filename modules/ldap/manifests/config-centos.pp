class ldap::config-centos {
  File {
    owner => 'root',
    group => 'root',
  }
  file { '/etc/openldap/ldap.conf':
    ensure  => present,
    mode    => '0644',
    source  => 'puppet:///modules/ldap/centos/ldap.conf',
    require => Class['ldap::install-centos'],
    notify  => Class['ldap::service-centos'],
  }
file { '/etc/nslcd.conf':
    ensure  => present,
    mode    => '0644',
    source  => 'puppet:///modules/ldap/centos/nslcd.conf',
    require => Class['ldap::install-centos'],
    notify  => Class['ldap::service-centos'],
  }
file { '/etc/nsswitch.conf':
    ensure  => present,
    mode    => '0644',
    source  => 'puppet:///modules/ldap/centos/nsswitch.conf',
    require => Class['ldap::install-centos'],
    notify  => Class['ldap::service-centos'],
  }
file { '/etc/nscd.conf':
    ensure  => present,
    mode    => '0644',
    source  => 'puppet:///modules/ldap/centos/nscd.conf',
    require => Class['ldap::install-centos'],
    notify  => Class['ldap::service-centos'],

}
file { '/etc/pam.d/system-auth':
    ensure  => present,
    mode    => '0644',
    source  => 'puppet:///modules/ldap/centos/system-auth',
    require => Class['ldap::install-centos'],
    notify  => Class['ldap::service-centos'],

}
file { '/etc/pam.d/system-auth-ac':
	ensure => link,
	target => '/etc/pam.d/system-auth'
}
}
