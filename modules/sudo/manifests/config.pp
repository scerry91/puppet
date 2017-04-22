class sudo::config {

file { '/etc/sudoers':
      ensure  => present,
      mode    => '0440',
      source  => 'puppet:///modules/sudo/sudoers',
  }

}
