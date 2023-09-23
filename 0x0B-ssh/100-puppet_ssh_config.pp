# Making passwordAuthentication and adding new private keya
include stdlib

file_line { 'replace passwordAuthentication':
  ensure  => 'present',
  path    => '/etc/ssh/ssh_config',
  replace => true,
  line    => 'PasswordAuthentication no',
  match   => 'PasswordAuthentication yes',
}

file_line { 'add the private key ~/.ssh/school':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
