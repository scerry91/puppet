class repositories::config {
file { '/etc/apt/source.list':
ensure => present,
source => 'puppet:///modules/repositories/source.list',
}
}
