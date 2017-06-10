class cron::config {
	file { '/etc/cron.daily/diskspace':
	mode => '0755',
	ensure => present,
	source => 'puppet:///modules/cron/diskspace',
}
file { '/etc/crontab':
        mode => '0755',
        ensure => present,
        source => 'puppet:///modules/cron/crontab',
}
}
