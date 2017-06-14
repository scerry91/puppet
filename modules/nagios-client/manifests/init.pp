class nagios-client {
case $operatingsystem {
Debian: {
		case $lsbdistcodename {
			jessie : { 
			 include nagios-client::install-debian 
			 include nagios-client::service-debian 
			 include nagios-client::config-debian 
}
			wheezy : {
                         include nagios-client::install-debian
                         include nagios-client::service-debian
                         include nagios-client::config-debian
}		
}
}
		Centos: {		
		case $operatingsystemmajrelease {
			7 : { 
			include nagios-client::install-centos 
			include nagios-client::service-centos 
			include nagios-client::config-centos 
}
}
}

}
}


