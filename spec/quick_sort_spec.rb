require_relative '../lib/quick_sort'

RSpec.describe QuickSort do
  describe '#sort' do
    let(:list) { (1..30).to_a.shuffle }

    it 'returns a sorted array list' do
      expect(QuickSort.sort(list)).to match_array((1..30).to_a)
    end
  end
end
