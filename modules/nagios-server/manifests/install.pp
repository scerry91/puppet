class nagios-server::install {
	package { 'nagios3':
		ensure => 'installed',
}
package {'nagios-nrpe-plugin':
        ensure => 'installed',
}
}
