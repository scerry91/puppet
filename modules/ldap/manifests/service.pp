class ldap::service {
  service { 'sssd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config'],
  }
service { 'nslcd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config'],
  }
service { 'nscd':
    ensure     => running,
    enable     => true,
    require    => Class['ldap::config'],
  }

}

