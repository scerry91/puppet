class nagios-client::install-debian {
package {'nagios-nrpe-server':
	ensure => 'installed',
}
package {'nagios-plugins':
        ensure => 'installed',
}
}
