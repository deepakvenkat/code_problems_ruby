require 'spec_helper'

describe '#array_pair_sum' do
  it "should return the correct pairs" do
    array_pair_sum([1, 2, 3, 4, 5], 6).count.should == 2
    array_pair_sum([1, 2, 3, 4, 5], 6).should include([1,5], [2, 4])
  end
end