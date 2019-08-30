require_relative '../lib/binary_search'

RSpec.describe BinarySearch do
  describe '#search' do
    let(:items) { (1..20).to_a }
    let(:valid_item) { 5 }
    let(:invalid_item) { 35 }

    context 'when we search for a valid item' do
      it 'returns correct index of valid item' do
        expect(BinarySearch.search(items, valid_item)).to eq 4
      end
    end

    context 'when we search for an invalid item' do
      it 'returns Not found message' do
        expect(BinarySearch.search(items, invalid_item)).to eq 'Not found'
      end
    end
  end
end
