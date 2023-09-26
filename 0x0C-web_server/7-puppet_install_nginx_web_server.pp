# Installing and configing the nginx using puppet
package { 'nginx':
  name   => 'nginx',
  ensure => installed,
}

file_line { 'real':
  ensure   => present,
  path     => '/etc/nginx/sites-available/default',
  after    => 'server_name _;',
  line     => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  multiple => true
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
  path    => '/var/www/html/index.html'
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
