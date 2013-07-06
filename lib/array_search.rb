def array_search input, key
  #search an array of unknown length using skip lists
  index = 0
  while(!input[index].nil? && input[index] <= key)
    return index if input[index] == key
    index = index == 0 ? 1 : index * 2
  end
  return -1 if index < 2
  found_index = array_search(input[(index/2)..index], key)
  return found_index == -1 ? -1 : (index/2 ) + found_index
end
