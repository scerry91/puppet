node 'nagios.apopx.net' {
class { 'ldap': }
class { 'sudo': }
class { 'nagios-server': }
class { 'ntp': }
}


