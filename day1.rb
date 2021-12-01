file = File.open('day1_input.txt')
# file = File.open('day1_sample.txt')

inputArray = file.readlines
count_increase = 0

previous_measurement = inputArray[0]
inputArray.each_with_index do |measurement, index|
  count_increase += 1 if (measurement.to_i - inputArray[index - 1].to_i).positive?
  previous_measurement = measurement
end

p count_increase
