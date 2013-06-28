class LinkedList
  attr_accessor :head, :length
  #TODO
  #reverse (recursive), merge two lists (sort), return the kth element,
  #
  def initialize
    @head = Node.new(self, nil)
    @head.next = nil
    @length = 0
  end

  def empty?
    @head.next.nil?
  end

  def clear_list
    @head.next = nil
    @length = 0
  end

  def insert(key, position = nil)
    return "invalid position" if !position.nil? && @length < (position - 1)

    element = Node.new(self, key)

    if position.nil?
      element.next = @head.next
      @head.next = element
    else
      prev_element = @head
      (position - 1).times { prev_element = prev_element.next }
      element.next = prev_element.next
      prev_element.next = element
    end
    @length += 1
  end

  def find(key)
    return false if @head.next.nil?
    element = @head
    while !element.nil? && element.key != key
      element = element.next
    end
    return false if element.nil?
    return true
  end

  def delete(key)
    prev_element = @head
    element = @head.next
    while !element.nil? && element.key != key
      element = element.next
      prev_element = prev_element.next
    end
    return "element not found" if element.nil?
    prev_element.next = element.next
    @length -= 1
  end

  def print
    element = @head.next
    while !element.nil?
      puts "node:" + element.key.to_s
      element = element.next
    end
  end
end

class Node
  attr_accessor :key, :next, :list

  def initialize(list, key)
    @list = list
    @key = key
  end
end