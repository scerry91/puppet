class repositories::debian {
        $debianver = $lsbdistcodename
        file {
                "/etc/apt/sources.list":
                ensure => present,
                replace => true,
                owner => root,
                group => root,
                mode => 644,
                content => template("repositories/source.list"),
                notify => Exec["apt-update"];
}
        exec {
        "apt-update":
        command => "apt-get update",
        path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
        refreshonly => true,
        require =>  File["/etc/apt/sources.list"]
}
}

