def largest_continuous_sum array
  return 0 if array.length == 0
  current_sum = array[0]
  max_sum = array[0]
  array[1..array.length - 1].each do |number|
    current_sum = [current_sum + number, number].max
    max_sum = [current_sum, max_sum].max
  end
  return max_sum
end