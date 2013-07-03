require 'spec_helper'

describe AnagramDetection do
  describe '#anagrams' do
    it "should return the anagrams of the substring" do
      anagrams = AnagramDetection.anagrams('AdnBndAndBdaBn', 'dAn')
      anagrams.count.should == 4
      anagrams.should include("Adn", "ndA")
    end
  end
end
