class repositories::config {
file { '/etc/apt/sources.list:
ensure => present,
source => 'puppet:///modules/repositories/sources.list',
}
}
