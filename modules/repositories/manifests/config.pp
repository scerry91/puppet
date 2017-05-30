class repositories::config {


 if $lsbdistcodename == ""
        {
                fail("lsbdistcodename missing, check facter")
        }
        else {
                if $lsbdistcodename == "n/a" and $lsbmajdistrelease == "6" {
                        # squeeze had a broken lsb-release tool:
                        # bens@spark:~$ lsb_release  -a
                        # No LSB modules are available.
                        # Distributor ID:       Debian
                        # Description:          Debian GNU/Linux 6.0.4 (n/a)
                        # Release:                      6.0.4
                        # Codename:                     n/a
                        $debianver = "squeeze"
                } else {
                        $debianver = $lsbdistcodename
                }
        }

file { '/etc/apt/sources.list':
ensure => present,
source => 'puppet:///modules/repositories/sources.list',
}
}
