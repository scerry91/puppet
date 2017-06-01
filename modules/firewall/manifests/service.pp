class firewall::service {
	service { 'iptables':
		ensure => 'latest',
}
}
