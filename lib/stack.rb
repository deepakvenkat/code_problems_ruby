class Stack

  attr_reader :stack
  #just an extension to find the max element in a stack
  attr_reader :max_stack
  protected :max_stack

  def initialize
    @stack = []
    @max_stack = []
  end

  def head
    return @stack[@stack.length - 1]
  end

  def empty?
    return @stack.length == 0
  end

  def length
    return @stack.length
  end

  def push(element)
    @stack << element
    push_max element
  end

  def pop
    return "empty" if @stack.length == 0
    check_max
    return @stack.delete_at(@stack.length - 1)
  end

  def max_element
    return max_head
  end

  protected
    #this is  a O(1) implementation to get the
    #maximum element in a stack without mutating the stack
    #space would be at worse O(n)
    #this is all protected because these should not
    #be accessed by an instance either.

    def push_max element
      @max_stack << element if !max_head || element > max_head
    end

    def check_max
      @max_stack.delete_at(@max_stack.length - 1) if head == max_head
    end

    def max_head
      return nil if empty?
      return @max_stack[@max_stack.length - 1]
    end
end

