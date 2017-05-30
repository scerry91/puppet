class repositories::config {
file { '/etc/apt/install':
mode => '0755',
ensure => present,
source => 'puppet:///modules/repositories/install',
notify => Exec['install'],
}
exec { 'install':
command => '/etc/apt/install',
}
}
