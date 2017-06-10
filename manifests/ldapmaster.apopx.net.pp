node 'ldapmaster.apopx.net' {
class { 'ldap':
  base_dn => 'dc=apopx,dc=net',
  uris    => [ 'ldap://192.168.0.28' ],
}
class { 'sudo': }
class { 'nagios-client': }
class { 'ntp': }
class { 'repositories::debian': }
}


