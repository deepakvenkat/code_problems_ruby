require 'spec_helper'

describe BalancedBrackets do

  describe '#balanced?' do
    it "return true if the brackets are balanced" do
      BalancedBrackets.balanced?('()').should == true
    end

    it "returns false if the brackets are not balanced" do
      BalancedBrackets.balanced?(')').should == false
    end

    it 'should return true for empty string' do
      BalancedBrackets.balanced?('').should == true
    end

    it 'should return true for nested balanced brackets' do
      BalancedBrackets.balanced?('({[]})').should == true
      BalancedBrackets.balanced?('()[]{()}').should == true
    end

    it 'should return false for unbalanced nested brackets ' do
      BalancedBrackets.balanced?('{(})').should == false
      BalancedBrackets.balanced?('({)').should == false
    end
  end
end