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
end
