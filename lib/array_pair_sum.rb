def array_pair_sum(input, sum)
  hash = {}
  pairs = []
  input.each do |element|
    if !hash[sum - element].nil? && hash[sum - element] == false
      pairs << [element, sum - element]
      hash[element] = true
      hash[sum - element] = true
    elsif hash[sum - element].nil?
      hash[element] = false
    end
  end
  return pairs
end