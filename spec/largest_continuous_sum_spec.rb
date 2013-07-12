require 'spec_helper'

describe "#largest_continuous_sum" do
  it "should return 0 when the length of the array is 0" do
    largest_continuous_sum([]).should == 0
  end

  it "should return the maximum number when everything is negative" do
    largest_continuous_sum([-2, -6, -10, -14]).should == -2
    largest_continuous_sum([-2, -6, -1, -14]).should == -1
  end

  it "should return the sum of the array when everything is positive" do
    largest_continuous_sum([1, 2, 3, 4]).should == 10
  end

  it "should return the largest continuous sum when array has both positive and negative numbers" do
    largest_continuous_sum([-40, 1, 40, -50, 1, 50, -20, 1, 20, 0, 0]).should == 52
  end
end