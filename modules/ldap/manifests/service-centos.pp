class ldap::service-centos {
  service { 'nslcd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config-centos'],
  }
service { 'nscd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config-centos'],
  }
}

