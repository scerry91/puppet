class ldap::config (
  $base_dn,
  $uris,
)
{
#  $uris_space = join($uris, ' ')
#  $uris_comma = join($uris, ',')
  # defaults
  File {
    owner => 'root',
    group => 'root',
  }
  file { '/etc/ldap.conf':
    ensure  => present,
    mode    => '0444',
    source  => 'puppet:///modules/ldap/ldap.conf',
    require => Class['ldap::install'],
    notify  => Class['ldap::service'],
  }
file { '/etc/sssd/sssd.conf':
    ensure  => present,
    mode    => '0600',
    source  => 'puppet:///modules/ldap/sssd.conf',
    require => Class['ldap::install'],
    notify  => Class['ldap::service'],
  }
file { '/etc/nsswitch.conf':
    ensure  => present,
    mode    => '600',
    source  => 'puppet:///modules/ldap/nsswitch.conf',
    require => Class['ldap::install'],
    notify  => Class['ldap::service'],
  }
file { '/etc/nslcd.conf':
    ensure  => present,
    mode    => '0600',
    source  => 'puppet:///modules/ldap/nslcd.conf',
    require => Class['ldap::install'],
    notify  => Class['ldap::service'],

}
file { '/etc/ldap/ldap.conf':
    ensure  => present,
    mode    => '0444',
    source  => 'puppet:///modules/ldap/ldap.conf',
    require => Class['ldap::install'],
    notify  => Class['ldap::service'],

}
}
