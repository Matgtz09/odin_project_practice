require_relative '../bubble_sort_project/bubble_sort'

RSpec.describe 'Bubble Sort' do
  describe 'bubble sort' do
    context 'empty array' do
      let(:array) { [] }

      it 'returns an empty array' do
        expect(bubble_sort(array)).to eq([])
      end
    end

    context 'single array' do
      let(:array) { [1] }

      it 'returns an empty array' do
        expect(bubble_sort(array)).to eq([1])
      end
    end

    context 'two sized array' do
      let(:array) { [2,1] }

      it 'returns an empty array' do
        expect(bubble_sort(array)).to eq([1,2])
      end
    end

    context 'multi sized array with non repeating numbers' do
      let(:array) { [4,3,78,2,0,-2] }

      it 'returns an empty array' do
        expect(bubble_sort(array)).to eq([-2,0,2,3,4,78])
      end
    end

    context 'multi sized array with repeating numbers' do
      let(:array) { [4,3,78,2,0,2] }

      it 'returns an empty array' do
        expect(bubble_sort(array)).to eq([0,2,2,3,4,78])
      end
    end
  end
end
