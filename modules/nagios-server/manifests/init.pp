class nagios-server {
include nagios-server::install
include nagios-server::config
include nagios-server::service
}
