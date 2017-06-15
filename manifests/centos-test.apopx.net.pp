node 'centos-test.apopx.net' {
class { 'repositories': }
class { 'nagios-client': }
#class { 'ntp': }
class { 'ldap': }
}


