# A Merge sort algorithm implementation in Ruby that continually splits an
# array of items in half. If the array is empty or has one item, it is sorted
# by definition. If the array has more than one item, we split it and
# recursively invoke a merge sort on both halves.
module MergeSort
  def self.sort(array)
    return array if array.length <= 1

    # Split array
    mid_point = array.length / 2
    array_a = sort(array.slice(0, mid_point))
    array_b = sort(array.slice(mid_point, array.length - mid_point))

    # Conquer
    array = []
    offset_a = 0
    offset_b = 0
    while offset_a < array_a.length && offset_b < array_b.length
      element_a = array_a[offset_a]
      element_b = array_b[offset_b]

      # Push smallest of the two elements into our array
      if element_a <= element_b
        array << element_a
        offset_a += 1
      else
        array << element_b
        offset_b += 1
      end
    end

    # At least one element will be left in either array_a or array_b
    while offset_a < array_a.length
      array << array_a[offset_a]
      offset_a += 1
    end

    while offset_b < array_b.length
      array << array_b[offset_b]
      offset_b += 1
    end

    array
  end
end
