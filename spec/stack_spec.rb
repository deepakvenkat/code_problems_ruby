require 'spec_helper'

describe Stack do
  before(:each) do
    @stack = Stack.new()
  end

  describe '.push' do
    it "should push the element into the stack" do
      @stack.push(1)
      @stack.length.should == 1
      @stack.head.should == 1
      @stack.push(2)
      @stack.length.should == 2
      @stack.head.should == 2
    end
  end

  describe '.pop' do
    it "should pop the head element" do
      @stack.push(1)
      @stack.push(2)
      @stack.push(3)
      @stack.pop.should == 3
    end

    it "should return error if the stack is empty" do
      @stack.pop.should == "empty"
    end
  end

  describe '.max_element' do
    it "should return the max element in the stack" do
      @stack.max_element.should ==  nil
      @stack.push(2)
      @stack.push(3)
      @stack.push(1)
      @stack.max_element.should == 3
      @stack.pop
      @stack.max_element.should == 3
      @stack.pop
      @stack.max_element.should == 2
    end
  end
end