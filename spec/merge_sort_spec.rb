require_relative '../lib/merge_sort'

RSpec.describe MergeSort do
  describe '#sort' do
    let(:list) { (1..30).to_a.shuffle }

    it 'returns a sorted array list' do
      expect(MergeSort.sort(list)).to match_array((1..30).to_a)
    end
  end
end
