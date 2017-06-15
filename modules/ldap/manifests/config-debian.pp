class ldap::config-debian {
  File {
    owner => 'root',
    group => 'root',
  }
  file { '/etc/ldap.conf':
    ensure  => present,
    mode    => '0444',
    source  => 'puppet:///modules/ldap/ldap.conf',
    require => Class['ldap::install-debian'],
    notify  => Class['ldap::service-debian'],
  }
file { '/etc/sssd/sssd.conf':
    ensure  => present,
    mode    => '0600',
    source  => 'puppet:///modules/ldap/sssd.conf',
    require => Class['ldap::install-debian'],
    notify  => Class['ldap::service-debian'],
  }
file { '/etc/nsswitch.conf':
    ensure  => present,
    mode    => '600',
    source  => 'puppet:///modules/ldap/nsswitch.conf',
    require => Class['ldap::install-debian'],
    notify  => Class['ldap::service-debian'],
  }
file { '/etc/nslcd.conf':
    ensure  => present,
    mode    => '0600',
    source  => 'puppet:///modules/ldap/nslcd.conf',
    require => Class['ldap::install-debian'],
    notify  => Class['ldap::service-debian'],

}
file { '/etc/ldap/ldap.conf':
    ensure  => present,
    mode    => '0444',
    source  => 'puppet:///modules/ldap/ldap.conf',
    require => Class['ldap::install-debian'],
    notify  => Class['ldap::service-debian'],

}
file { '/etc/pam.d/common-session':
    ensure  => present,
    mode    => '0444',
    source  => 'puppet:///modules/ldap/common-session-debian',
    require => Class['ldap::install-debian'],
    notify  => Class['ldap::service-debian'],

}
}
