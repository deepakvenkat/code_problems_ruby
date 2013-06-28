require 'spec_helper'

describe LinkedList do

  before do
    @list = LinkedList.new()
  end

  describe '.empty?' do

    it "should return true if the list is empty" do
      @list.empty?.should == true
      @list.insert(1)
      @list.empty?.should == false
    end
  end

  describe '.insert' do

    it "should return an error if position is invalid " do
      @list.insert(2, 2).should == "invalid position"
    end

    it "should insert the element at the first position when position is not specified" do
      @list.insert(3)
      @list.head.next.key.should == 3
    end

    it "should insert the element in the right position" do
      @list.insert(1)
      @list.insert(2)
      @list.insert(3)
      @list.insert(4, 2)
      @list.head.next.next.key.should == 4
    end
  end

  describe '.find' do

    it "should return false if the list is empty" do
      @list.find(1).should == false
    end

    it "should return false if the element is not found" do
      @list.insert(1)
      @list.find(2).should == false
    end

    it "should return true if it found the element" do
      @list.insert(1)
      @list.insert(2)
      @list.find(2).should == true
    end
  end

  describe '.delete' do

    it "should return error if element is not found" do
      @list.insert(1)
      @list.delete(2).should == "element not found"
    end

    it "should delete the element" do
      @list.insert(1)
      @list.insert(2)
      @list.insert(3)
      @list.length.should == 3
      @list.delete(3)
      @list.length.should == 2
      @list.head.next.key.should == 2
    end
  end

  describe '.clear_list' do
    it "should clear the list" do
      @list.insert(1)
      @list.length.should == 1
      @list.clear_list
      @list.length.should == 0
      @list.head.next.should == nil
    end
  end
end