require 'spec_helper'

describe NumberProblem do

  describe "#prime_numbers" do

    it "should return a list of prime numbers" do
     NumberProblem.prime_numbers(10).should  == [2, 3, 5, 7]
    end
  end

  describe "#factorial" do
    it "should return the correct factorial of the number" do
      NumberProblem.factorial(0).should == 1
      NumberProblem.factorial(1).should == 1
      NumberProblem.factorial(5).should == 120
    end
  end

  describe "#reverse_integer" do
    it "should return invalid for non integers" do
      NumberProblem.reverse_integer(1.1).should == "invalid input"
      NumberProblem.reverse_integer("123").should == "invalid input"
    end
    it "should reverse the integer" do
      NumberProblem.reverse_integer(0).should == 0
      NumberProblem.reverse_integer(123).should == 321
    end
  end
end
