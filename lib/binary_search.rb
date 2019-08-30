# A binary search implementation in Ruby.
# It's time complexity for a worst case scenario is O(log n).
# A precondition for using a binary search is that the items
# (stored in array form) have to be sorted.
module BinarySearch
  def self.search(items, item)
    first_index = 0
    last_index = items.length - 1

    return 'Not found' if first_index >= last_index

    mid_index = (first_index + last_index) / 2
    mid_value = items[mid_index]

    if mid_value == item
      mid_index
    elsif mid_value < item
      search(items[(mid_index + 1)..last_index], item)
    else
      search(items[first_index..mid_index], item)
    end
  end
end
