node 'test.apopx.net' {
class { 'repositories': }
class { 'cron': }
class { 'nagios-client': }
class { 'ldap': }
}


