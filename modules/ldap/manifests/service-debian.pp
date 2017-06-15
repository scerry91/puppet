class ldap::service-debian {
  service { 'sssd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config-debian'],
  }
service { 'nslcd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config-debian'],
  }
service { 'nscd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config-debian'],
  }

}

