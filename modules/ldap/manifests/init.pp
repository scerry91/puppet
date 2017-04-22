class ldap (
  $base_dn = hiera('ldap::base_dn'),
  $uris    = hiera('ldap::uris'),
) {
  class { 'ldap::config':
    base_dn => $base_dn,
    uris    => $uris,
  }
  include ldap::install
  include ldap::service
}
