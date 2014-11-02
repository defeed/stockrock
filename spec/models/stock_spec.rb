require 'spec_helper'

describe Stock do
  it 'saves valid stock record' do
    stock = build(:stock)
    expect(stock).to be_valid
  end
  
  it 'validates the stock name uniqueness' do
    stock = create(:stock)
    another_stock = build(:stock)
    expect(another_stock).to be_invalid
  end
  
  it 'requires all the attribues' do
    stock = Stock.new
    expect(stock).to be_invalid
  end
  
  describe '#stock_values' do
    it 'returns a hash of values' do
      stock = build(:stock)
      expect(stock.stock_values).to be_a(Hash)
    end
    
    it 'returns correct values' do
      stock = build(:stock)
      expect(stock.stock_values).to eq(
        {
          0 => '7500.00',
          1 => '7702.50',
          2 => '7910.47',
          3 => '8124.05',
          4 => '8343.40',
          5 => '8568.67'
        }
      )
    end
  end
end
