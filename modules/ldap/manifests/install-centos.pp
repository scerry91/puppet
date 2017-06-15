class ldap::install-centos {
package {'openldap-clients':
        ensure => 'installed',
}
package {'nss-pam-ldapd':
        ensure => 'installed',
}
}


