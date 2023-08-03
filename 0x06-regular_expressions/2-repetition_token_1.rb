#!/usr/bin/env ruby
# Repetition Token #1
# Find the regular expression that will match the above cases.
# Using the project instructions to create a Ruby script that accepts one args..

puts ARGV[0].scan(/hb{1}?tn/).join
