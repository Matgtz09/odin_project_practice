require_relative '../caesar_cipher_project/caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'shift is not nil' do
    let(:shift) { 5 }

    context 'all characters' do
      let(:word) { "FluffyIloveYou" }

      it 'returns a word with a shift in 5' do
        expect(caesar_cipher(word, shift)).to eq("KqzkkdNqtajDtz")
      end
    end

    context 'all special characters' do
      let(:word) { ",,,,,;'     !!!" }

      it 'returns a word with a shift in 5' do
        expect(caesar_cipher(word, shift)).to eq(",,,,,;'     !!!")
      end
    end

    context 'mixture of special characters and regular characters' do
      let(:word) { " Fluffy, I love you!!!" }

      it 'returns a word with a shift in 5' do
        expect(caesar_cipher(word, shift)).to eq(" Kqzkkd, N qtaj dtz!!!")
      end
    end
  end

  describe 'shift is nil' do
    let(:word) { " Fluffy, I love you!!!" }
    let(:shift) { nil }

    it 'returns nil' do
      nil
    end
  end
end