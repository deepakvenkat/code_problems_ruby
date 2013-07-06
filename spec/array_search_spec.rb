require 'spec_helper'

describe "#array_search" do
  it "should return the position of the element if the element is found" do
    array = [1, 4, 13, 6, 32, 2, 9, 45, 34, 23, 99, 82, 42, 5]
    array = array.sort
    array_search(array, 45).should == array.index(45)
    array_search(array, 5).should == array.index(5)
  end

  it "should return -1 if the element is not found" do
    array = [3, 5, 7, 9, 11, 13, 15, 17]
    array_search(array, 12).should == -1
    array_search(array, 42).should == -1
    array_search(array, 1).should == -1
  end

  it "should return -1 if the array is empty" do
    array_search([], 10).should == -1
  end
end