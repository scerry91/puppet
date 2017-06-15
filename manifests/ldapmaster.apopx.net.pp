node 'ldapmaster.apopx.net' {
class { 'ldap': }
class { 'sudo': }
class { 'nagios-client': }
class { 'ntp': }
class { 'repositories': }
}


