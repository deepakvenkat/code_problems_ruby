require 'spec_helper'

describe ArrayReverse do

  describe "reverse" do
    it "should return the reverse of an array" do
      output = ArrayReverse.reverse("abcd")
      output.should == "dcba"
    end
  end
end