node 'dns-1.apopx.net' {
class { 'repositories': }
class { 'ldap': }
class { 'sudo': }
class { 'nagios-client': }
class { 'ntp': }
}


