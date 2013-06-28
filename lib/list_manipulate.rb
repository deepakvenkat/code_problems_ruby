require 'linked_list'

class ListManipulate

  def self.reverse(list)
    head = list.head
    first = list.head.next
    prev = nil
    while !first.nil?
      node = Node.new(list, first.key)
      node.next = prev
      prev = node
      first = first.next
    end
    list.head.next = node
  end

  def self.kth_element_from_last(list, k)
    return "invalid list" if list.nil?
    return "k bigger than list" if list.length < k
    fast = list.head.next
    slow = list.head.next
    (k - 1).times { fast = fast.next }
    while !fast.next.nil?
      fast = fast.next
      slow = slow.next
    end
    return slow.key
  end
end