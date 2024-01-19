#!/usr/bin/pup
# Puppet manifest to install Flask from pip3 with compatible Werkzeug version
package {'python3-pip':
  ensure   => 'latest',
}

package { 'Werkzeug':
  ensure   => '2.0.1',  # Use a version compatible with Flask 2.1.0
  provider => 'pip3',
  require  => Package['python3-pip'],
}

package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['Werkzeug'],
}
