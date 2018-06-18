class profile::nginx(
  Array $vhosts,
) {
  include ::nginx

  $vhosts.each |$vhost| {
    ::nginx::vhost { $vhost['fqdn']:
      port => $vhost['port'],
      server_aliases => $vhost['serber_aliases'],
    }
  }
  
}
