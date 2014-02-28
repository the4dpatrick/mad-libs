#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'clipboard'

if ARGV.empty?
  raise ArgumentError, 'You must pass in a text-file'
else
  # Load file's body text
  filename = ARGV[0]
  file_body = File.read filename

  # values of to be replaced strings
  to_be_replaced = file_body.scan(/\{[A-Z]{1,}\}/)

  # determine if there are any symbols needing interpolation
  if to_be_replaced.empty?
    raise 'No variables need replacing'
  else
    # only unique values
    to_be_replaced.uniq!

    # interate thru all the symbols
    to_be_replaced.each do |r|

      # prompt user to individually assign a value to each symbol
      puts "What would you like to replace #{r} with?"
      replace_val = STDIN.gets.strip

      # replace
      file_body.gsub!(r, replace_val)
    end

    ##################
    # Output Options #
    #############################################################
    # print modified body, overwrite file, or copy to clipboard #
    #############################################################

    # puts file_body
    # File.open filename, 'w' do |f|
    #  f.write file_body
    # end
    Clipboard.copy file_body
  end
end
