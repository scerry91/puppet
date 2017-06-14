class nagios-client::install-centos {
package {'nrpe':
	ensure => 'installed',
}
package {'nagios-plugins':
        ensure => 'installed',
}
package {'nagios-plugins-nrpe':
        ensure => 'installed',
}

}
