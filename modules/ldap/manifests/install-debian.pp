class ldap::install-debian {
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


