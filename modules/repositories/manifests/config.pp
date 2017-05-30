class repositories::config {
file { '/etc/apt/install':
mode => '0755',
ensure => present,
source => 'puppet:///modules/repositories/install',
notify => Exec['install'],
}
exec { 'install':
  command => "/bin/bash -c '/etc/apt/install'",
}
}
