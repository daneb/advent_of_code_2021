#!/usr/bin/env ruby

file = File.open('day1_input.txt')
inputArray = file.readlines
count_increase = 0
previous = inputArray[0].to_i + inputArray[1].to_i + inputArray[2].to_i

previous_measurement = inputArray[0]
inputArray.each_with_index do |measurement, index|
  current = measurement.to_i + inputArray[index + 1].to_i + inputArray[index + 2].to_i
  count_increase += 1 if current > previous
  previous = current
end

p count_increase
