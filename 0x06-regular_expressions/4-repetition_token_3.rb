#!/usr/bin/env ruby
# Repetition Token #3
# Finding the regular expression that will match the above cases.
# Using the project instructions to create a Ruby scripts that accepts one args.
# Your regex should not contain square brackets.

puts ARGV[0].scan(/hbt*n/).join
