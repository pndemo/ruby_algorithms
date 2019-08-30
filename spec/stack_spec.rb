require_relative '../lib/stack'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  describe '#initialize' do
    it 'can initialize a stack' do
      expect(stack).to be_a(Stack)
    end

    it 'initializes with an empty items array' do
      expect(stack.items).to be_empty
    end
  end

  describe '#push' do
    it 'can store an item' do
      stack.push('monday')
      expect(stack.items).to include('monday')
    end
  end

  describe '#pop' do
    it 'can retrieve items in reverse order of storage' do
      %w[monday tuesday].each { |item| stack.push(item) }
      expect(stack.pop).to eq 'tuesday'
    end
  end

  describe '#size' do
    it 'returns correct number of items stored' do
      %w[monday tuesday wednesday].each { |item| stack.push(item) }
      expect(stack.size).to eq 3
    end
  end
end
