def merge_sort(array)
  # Base case: an array of one or no elements is already sorted
  return array if array.length <= 1

  # Split the array into two halves
  mid = array.length / 2
  left_half = array[0...mid]
  right_half = array[mid..]

  # Recursively sort both halves
  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  # Merge the sorted halves
  merge(sorted_left, sorted_right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    # Compare the first elements and move the smaller one into the sorted array
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  # Concatenate any remaining elements
  sorted + left + right
end
