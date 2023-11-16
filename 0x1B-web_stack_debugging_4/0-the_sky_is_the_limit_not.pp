# Debuggings ulimit request
# Sky is my limit
# Im bringing the limit higher





exec { 'ulimit':
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 2000\"/g" /etc/default/nginx',
  provider => shell,
}

exec { 'restorenginx':
  command  => 'service nginx restart',
  provider => shell,
  require  => Exec['ulimit'],
}
