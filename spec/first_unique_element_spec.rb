require 'spec_helper'

describe "#first_unique_element" do
  it "returns nil if the array is empty" do
    first_unique_element([]).should be_nil
  end

  it "returns nil if there are no unique elements" do
    first_unique_element(['a', 'a', 'b', 'b']).should be_nil
  end

  it "returns the element when there is only one element" do
    first_unique_element(['a']).should == 'a'
  end

  it "returns the first unique element when there are multiple elements" do
    first_unique_element(['a', 'c', 'b', 'b', 'a']).should == 'c'
    first_unique_element(['a', 'c', 'b', 'c']).should == "a"
  end
end