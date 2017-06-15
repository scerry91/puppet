class ldap {
case $operatingsystem {
Debian: {
		case $lsbdistcodename {
			jessie : { 
			 include ldap::install-debian 
			 include ldap::service-debian 
			 include ldap::config-debian 
}
			wheezy : {
                         include ldap::install-debian
                         include ldap::service-debian
                         include ldap::config-debian
}		
}
}
		Centos: {		
		case $operatingsystemmajrelease {
			7 : { 
			include ldap::install-centos 
			include ldap::service-centos 
			include ldap::config-centos 
}
}
}

}
}



