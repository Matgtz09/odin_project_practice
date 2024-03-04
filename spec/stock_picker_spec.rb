require_relative '../stock_picker_project/stock_picker'
require 'pry'
RSpec.describe 'Stock Picker' do
  describe 'stock_picker' do

    context 'first day has the most expensive stock' do
      let(:stocks) { [17,3,6,9,15,8,6,1,10] }
      
      it 'returns an array for the second and fifth index' do
        expect(stock_picker(stocks)).to eq( [1,4] )
      end
    end

    context 'middle day has the most expensive stock' do
      let(:stocks) { [8,3,6,9,15,17,6,1,10] }
      
      it 'returns an array for the second and sixth index' do
        expect(stock_picker(stocks)).to eq( [1,5] )
      end
    end

    context 'last day has the most expensive stock' do
      let(:stocks) { [10,3,6,9,15,8,6,1,17] }

      it 'returns an array for the 7 and 8 index' do
        expect(stock_picker(stocks)).to eq( [7,8] )
      end
    end
  end
end
