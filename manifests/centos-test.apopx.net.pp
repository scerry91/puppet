node 'centos-test.apopx.net' {
#class { 'ldap':
#  base_dn => 'dc=apopx,dc=net',
#  uris    => [ 'ldap://192.168.0.28' ],
#}
class { 'repositories': }
#class { 'nagios-client': }
#class { 'ntp': }
}


