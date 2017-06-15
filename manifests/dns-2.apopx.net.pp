node 'dns-2.apopx.net' {
class { 'repositories': }
class { 'ldap': }
class { 'sudo': }
class { 'nagios-client': }
class { 'ntp': }
}


