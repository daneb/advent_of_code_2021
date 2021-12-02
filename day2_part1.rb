#!/usr/bin/env ruby

file = File.open('day2_input.txt')
arr = file.readlines

forward = 0

# Depth
up = 0
down = 0

arr.each do |line|
  instruction = line.split
  case instruction[0]
  when 'up'
    up += instruction[1].to_i
  when 'down'
    down += instruction[1].to_i
  when 'forward'
    forward += instruction[1].to_i
  end
end

p "Result: #{forward * (down - up)}"
