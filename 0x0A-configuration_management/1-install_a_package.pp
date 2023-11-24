# Puppet manifest to install Flask package using pip3

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
