#!/usr/bin/env ruby
# Simply matching School..
# The regular expressions must match "School"
# Using the project instructions to create a Ruby script that accepts one args

puts ARGV[0].scan(/School/).join
