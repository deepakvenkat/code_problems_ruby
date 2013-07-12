require 'spec_helper'

describe "#missing_element" do
  it "returns nil if the arrays are empty" do
    missing_element([], []).should be_nil
    xor_missing_element([], []).should be_nil
  end

  context "there is only one element" do
    it "returns the correct missing element" do
      missing_element([1], []).should == 1
      xor_missing_element([1], []).should == 1
    end
  end

  context "when there are multiple elements in the array " do
    it "returns the correct missing element" do
      missing_element([2, 4, 1, 7, 3, 8], [8, 1, 7, 4, 2]).should == 3
      xor_missing_element([2, 4, 1, 7, 3, 8], [8, 1, 7, 4, 2]).should == 3
    end
  end
end