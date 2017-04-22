class ldap::install {
package {'sssd':
        ensure => 'installed',
}
package {'ruby-ldap':
        ensure => 'installed',
}

package {'libpam-ldapd':
        ensure => 'installed',
}

}


