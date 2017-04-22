class ntp::config {

file {'/etc/ntp.conf':
	ensure => present,
	source => 'puppet:///modules/ntp/ntp.conf',
}
}
