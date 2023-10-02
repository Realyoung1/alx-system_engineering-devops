# X-Served-By is the custom HTTP header
# the Nginx hostname is thr value of the custom HTTP header
# 2-puppet_custom_http_response_header.pp was written
exec { 'update':
  command  => 'sudo apt-get update',
  provider => shell,
}

package { 'nginx':
  ensure  => installed,
  require => Exec['update'],
}

file_line { 'headercustom':
  ensure  => present,
  path    => '/etc/nginx/sites-available/default',
  after   => ':80 default_server;',
  line    => "add_header X-Served
