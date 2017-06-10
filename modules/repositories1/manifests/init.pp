class repositories1 {

yumrepo { "base":
	baseurl => "http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra",
	descr => "CentOS-$releasever - Base",
	enabled => 1,
	gpgcheck => 0
}
}
