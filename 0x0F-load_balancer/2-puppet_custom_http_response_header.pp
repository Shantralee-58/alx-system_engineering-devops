# This Puppet script configures a new Ubuntu machine to add a custom HTTP header to Nginx responses

class custom_http_response_header {
  package { 'nginx':
    ensure => installed,
  }

  file { '/etc/nginx/sites-available/default':
    ensure => present,
    content => "server {
      listen 80 default_server;
      listen [::]:80 default_server;
      server_name _;
      
      location / {
        add_header X-Served-By $hostname;
        # Your additional Nginx configuration goes here
      }
    }",
    notify => Service['nginx'],
  }

  service { 'nginx':
    ensure => running,
    enable => true,
  }
}

include custom_http_response_header
