def first_unique_element array
  return nil if array.length == 0
  hash = {}
  last_unique = nil
  array.reverse_each do |element|
    if hash[element].nil?
      hash[element] = 0
      last_unique = element
    else
      hash[element] += 1
      last_unique = nil if last_unique == element
    end
  end
  last_unique
end