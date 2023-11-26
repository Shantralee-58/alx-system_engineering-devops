<<<<<<< HEAD
#!/usr/bin/env bash
# 100-puppet_ssh_config.pp

=======
# 100-puppet_ssh_config.pp

class { 'stdlib': }

>>>>>>> 2d0ab356959dd7239df91209b207e33f798603bc
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/sshd_config',
  line  => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
<<<<<<< HEAD
  line  => '    IdentityFile ~/.ssh/school',
=======
  line  => 'IdentityFile ~/.ssh/school',
>>>>>>> 2d0ab356959dd7239df91209b207e33f798603bc
}
