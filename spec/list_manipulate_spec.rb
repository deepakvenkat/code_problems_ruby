require 'spec_helper'

describe ListManipulate do
  before (:each) do
    @list = LinkedList.new()
    @list.insert(1)
    @list.insert(2)
    @list.insert(3)
    @list.insert(4)
  end

  describe "#kth_element_from_last" do
    it "should return error if k is bigger than list or list is empty" do
      ListManipulate.kth_element_from_last(@list, 6).should == "k bigger than list"
    end
    it "should return the right element from last" do
      ListManipulate.kth_element_from_last(@list, 2).should == 2
      @list.insert(5)
      @list.insert(6)
      @list.insert(7)
      ListManipulate.kth_element_from_last(@list, 4).should == 4
      ListManipulate.kth_element_from_last(@list, 5).should == 5
      @list.insert(8)
      ListManipulate.kth_element_from_last(@list, 5).should == 5
    end
  end

  describe "#reverse" do
    it "should reverse the list" do
      @list.head.next.key.should == 4
      ListManipulate.reverse(@list)
      @list.head.next.key.should == 1
    end

    it "should do nothing when the list is of size 1" do
      @list.clear_list
      @list.insert(1)
      ListManipulate.reverse(@list)
      @list.head.next.key.should == 1
    end
  end
end