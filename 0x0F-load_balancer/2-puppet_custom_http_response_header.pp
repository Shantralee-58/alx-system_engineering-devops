# Puppet manifest to configure a new Ubuntu machine with a custom HTTP response header in Nginx.

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/sites-available/default':
  ensure => file,
  content => "server {
                listen 80 default_server;

                location / {
                    add_header X-Served-By $hostname always;
                }
            }",
}

service { 'nginx':
  ensure => running,
  enable => true,
}
