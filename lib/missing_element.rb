def missing_element array1, array2
  return nil if array1.length == 0
  array1.sort!
  array2.sort!
  array1.zip(array2).each do |number1, number2|
    return number1 unless number1 == number2
  end
end

#better solution using XOR
#when you XOR all the elements in both the array you
#will be left with the missing one.

def xor_missing_element array1, array2
  return nil if array1.length == 0 && array2.length == 0
  result = 0
  (array1 + array2).each do |number|
    result ^= number
  end
  return result
end