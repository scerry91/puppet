node 'webserver-1.apopx.net' {
class { 'ldap': }
class { 'sudo': }
class { 'nagios-client': }
class { 'ntp': }
class { 'firewall': }
class { 'repositories': }
}


