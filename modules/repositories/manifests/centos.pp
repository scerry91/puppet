class repositories::centos {

yumrepo { "base":
	baseurl => "http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra",
	descr => "CentOS-$releasever - Base",
	enabled => 1,
	gpgcheck => 0,
	notify => Exec["yum-update"];
}
yumrepo { "updates":
        baseurl => "http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra",
        descr => "CentOS-$releasever - Updates",
        enabled => 1,
        gpgcheck => 0,
	notify => Exec["yum-update"];

}
yumrepo { "Extras":
        baseurl => "http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=extras&infra=$infra",
        descr => "CentOS-$releasever - Extras",
        enabled => 1,
        gpgcheck => 0,
	notify => Exec["yum-update"];
}
yumrepo { "Plus":
        baseurl => "http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=centosplus&infra=$infra",
        descr => "CentOS-$releasever - Plus",
        enabled => 1,
        gpgcheck => 0,
	notify => Exec["yum-update"];
}
exec {
        "yum-update":
        command => "yum update",
        path => "/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin",
        refreshonly => true,
}
}
