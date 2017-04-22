class ntp::install {
package {'ntp':
	ensure => 'installed',
}
package {'ntpdate':
	ensure => 'installed',
}
}
