class firewall::config {
	file { '/etc/iptables':
		ensure => 'directory',
		path => '/etc/iptables',
		owner => 'root',
		group => 'root',
		mode => 0700,

}

	file { '/etc/iptables/up.rules':
		ensure => present,
		mode => 0600,
		source => 'puppet:///modules/firewall/up.rules',
}
exec { "/sbin/iptables-restore < /etc/iptables/up.rules":
                subscribe       => File["/etc/iptables/up.rules"],
        }
}
