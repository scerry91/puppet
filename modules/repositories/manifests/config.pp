class repositories::config {
file { '/etc/apt/update':
mode => '0755',
ensure => present,
source => 'puppet:///modules/repositories/source.list',
notify => Exec['update'],
}
exec { 'update':
command => '/usr/bin/sudo /etc/apt/update',
}
}
