class nagios-client::install {
package {'nagios-nrpe-server':
	ensure => 'installed',
}
package {'nagios-plugins':
        ensure => 'installed',
}
}
