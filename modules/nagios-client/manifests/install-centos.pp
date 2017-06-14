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
package {'nagios-plugins-users':
        ensure => 'installed',
}
package {'nagios-plugins-load':
        ensure => 'installed',
}
package {'nagios-plugins-swap':
        ensure => 'installed',
}
package {'nagios-plugins-disk':
        ensure => 'installed',
}
package {'nagios-plugins-procs':
        ensure => 'installed',
}
}
