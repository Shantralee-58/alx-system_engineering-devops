class nginx {
    package { 'nginx':
        ensure => installed,
    }

    service { 'nginx':
        ensure  => running,
        require => Package['nginx'],
    }

    file { '/var/www/html/index.html':
        ensure  => file,
        content => 'Hello World!',
        require => Package['nginx'],
    }

    file { '/etc/nginx/sites-available/default':
        ensure  => file,
        source  => 'puppet:///modules/nginx/default',
        require => Package['nginx'],
    }
}
