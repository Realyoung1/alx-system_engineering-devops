# func that Killed a processss called "killmenow"


exec { 'killmenow':
  command  => 'pkill killmenow',
  provider => shell,
}
