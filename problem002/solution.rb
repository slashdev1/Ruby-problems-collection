#!/usr/bin/env ruby
if ARGV.length < 2
  printf("Usage: %1$s NumberFrom NumberTo\nFor example: %1$s 0 40\n", File.basename(__FILE__))
  exit(1)
end

num_from = ARGV[0].to_i
num_to = ARGV[1].to_i
num_from, num_to = num_to, num_from if num_from > num_to

(num_from..num_to).each do |num|
  if num % 35 == 0
    puts 'FireWater'
  elsif num % 7 == 0
    puts 'Water'
  elsif num % 5 == 0
    puts 'Fire'
  else
    puts num
  end
end
