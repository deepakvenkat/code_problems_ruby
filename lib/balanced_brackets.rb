require 'stack'
class BalancedBrackets

  def self.balanced? input
    brackets = {'('=>')', '{'=>'}', '['=>']'}
    stack = Stack.new()
    input = input.split(//)
    input.each do |i|
      if brackets.keys.include? i
        stack.push i
      elsif brackets.values.include? i
        return false if stack.length == 0
        return false if brackets[stack.pop] != i
      end
    end
    return false if stack.length > 0
    return true
  end
end