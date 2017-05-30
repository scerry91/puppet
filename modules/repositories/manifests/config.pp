class repositories::config {
file { '/etc/apt/hello':
mode => '0755',
ensure => present,
source => 'puppet:///modules/repositories/source.list',
#notify => Exec['install'],
#}
#exec { 'install':
#command => '/etc/apt/install',
}
}
