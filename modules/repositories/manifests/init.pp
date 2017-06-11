class repositories {
	case $operatingsystem {
		Debian: {
		case $lsbdistcodename {
			jessie : { include repositories::debian }
			wheezy : { include repositories::debian }
}
}		
		Centos: {		
		case $operatingsystemmajrelease {
			7 : { include repositories::centos }
}
}

}
}
