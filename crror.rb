#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
require 'term/ansicolor'

include Term::ANSIColor

ARGF.each do |line|
  begin
    tokens = line.split(' ')
    if tokens.length < 2
      puts line
      next
    end

    colored_line = ''
    if tokens[1] == 'undefined'
      colored_line = bold + tokens[0] + ' ' + red + tokens[1..-1].join(' ') + reset
    elsif tokens[1] == 'error:'
      colored_line = bold + tokens[0..1].join(' ') + ' ' + red + tokens[2..-1].join(' ') + reset
    elsif tokens[1] == 'warning:'
      colored_line = bold + tokens[0..1].join(' ') + ' ' + yellow + tokens[2..-1].join(' ') + reset
    elsif tokens[1] == 'In' && tokens[2] == 'function'
      colored_line = tokens[0..2].join(' ') + ' ' + magenta + tokens[3..-1].join(' ') + reset
    elsif tokens[1] == 'In' && tokens[2] == 'member' && tokens[3] == 'function'
      colored_line = tokens[0..3].join(' ') + ' ' + magenta + tokens[4..-1].join(' ') + reset
    else
      colored_line = line
    end
    puts colored_line
  rescue
    STDERR.puts bold + red + $! + reset
    puts line
  end
end
