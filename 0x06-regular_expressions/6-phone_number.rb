#!/usr/bin/env ruby
# Call me maybe 
# The regular expression must match a 10 digit phone number

puts ARGV[0].scan(/^\d{1,10}$/).join
