#!/usr/bin/pup


# func that Installed flask
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
