# A stack can be implemented in Ruby using the Array class as shown below.
class Stack
  attr_reader :items

  def initialize
    @items = []
  end

  def push(item)
    @items.push(item)
  end

  def pop
    @items.pop
  end

  def size
    @items.length
  end
end
