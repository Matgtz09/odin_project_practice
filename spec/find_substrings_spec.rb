require_relative '../substring_project/find_substrings'
require 'pry'
RSpec.describe 'Find Substring' do
  describe 'single string word' do
    let(:string) { "below" }

    context 'dictionary has word' do
      let(:dictionary) { ["below", "down", "go", "going", "horn","how","howdy","it","i","low","own","part","partner","sit"] }
      
      it 'returns a hash with two keys' do
        expect(find_substrings(string, dictionary)).to match( {"below" => 1, "low" => 1} )
      end
    end

    context 'dictionary does not have word' do
      let(:dictionary) { ["down", "go", "going", "horn","how","howdy","it","i","own","part","partner","sit"] }

      it 'returns an empty hash' do
        expect(find_substrings(string, dictionary)).to match( {} )
      end
    end
  end

  describe 'multi string word' do
    let(:string) { "Howdy partner, sit down! How's it going?" }

    context 'dictionary has word' do
      let(:dictionary) { ["below", "down", "go", "going", "horn","how","howdy","it","i","low","own","part","partner","sit"] }
      
      it 'returns a hash with two keys' do
        expect(find_substrings(string, dictionary)).to match( {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1} )
      end
    end

    context 'dictionary does not have words' do
      let(:dictionary) { ["go", "going", "horn","how","howdy","it","own","part","partner","sit"] }

      it 'returns an empty hash' do
        expect(find_substrings(string, dictionary)).to match( {"go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1} )
      end
    end
  end
end