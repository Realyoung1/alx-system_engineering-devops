# Strace is my good friend
# i found why Apache is returning a 500 error
# I fixed the issue and the automated it
# I used tmux to run strace in one window
# Strace was attaced to current working process
exec { 'settingPress':
  command  => 'sed -i "s/\b.phpp\b/.php/g" /var/www/html/wp-settings.php',
  provider => shell,
}
