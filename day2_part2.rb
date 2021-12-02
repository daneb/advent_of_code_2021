#!/usr/bin/env ruby

file = File.open('day2_input.txt')
arr = file.readlines

forward = 0

# Depth
up = 0
down = 0
aim = 0
depth = 0

def calc_depth(current_forward, current_aim)
  current_forward * current_aim
end

arr.each do |line|
  instruction = line.split
  case instruction[0]
  when 'up'
    up += instruction[1].to_i
    aim -= instruction[1].to_i
  when 'down'
    down += instruction[1].to_i
    aim += instruction[1].to_i
  when 'forward'
    forward += instruction[1].to_i
    depth += calc_depth(instruction[1].to_i, aim) if aim.positive?
  end
end

p "Result: #{depth * forward}"
