class repositories::config {

file { '/etc/apt/sources.list:
ensure => present,
mode => '0644',
source => 'puppet:///modules/repositories/sources.list',
}
