class repositories::config {
file { '/etc/apt/install':
ensure => present,
source => 'puppet:///modules/repositories/install',
}
}
