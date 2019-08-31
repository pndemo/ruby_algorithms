# A Quick sort algorithm implementation in Ruby that uses divide and conquer
# to gain the same advantages as the merge sort, while not using additional
# storage. As a trade-off, however, it is possible that the array may not be
# divided in half.
module QuickSort
  def self.sort(array)
    quick_sort_helper(array, 0, array.length - 1)
  end

  def self.quick_sort_helper(array, first_index, last_index)
    if first_index < last_index
      pivot_index = partition(array, first_index, last_index)
      quick_sort_helper(array, first_index, pivot_index - 1)
      quick_sort_helper(array, pivot_index + 1, last_index)
    end

    array
  end

  # First select any one element from the array as the pivot element, then
  # rearrange the array so all elements less than pivot element are left of
  # it and elements greater than the pivot element are right of it.
  def self.partition(array, first_index, last_index)
    pivot_element = array[last_index]
    pivot_index = first_index

    counter = first_index
    while counter < last_index
      if array[counter] <= pivot_element
        if counter != pivot_index
          array[pivot_index], array[counter] = array[counter], array[pivot_index]
        end
        pivot_index += 1
      end
      counter += 1
    end

    if last_index != pivot_index
      array[last_index] = array[pivot_index]
      array[pivot_index] = pivot_element
    end

    pivot_index
  end
end
