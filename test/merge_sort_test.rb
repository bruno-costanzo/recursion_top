require 'minitest/autorun'
require_relative '../merge_sort' # Ensure this file is named merge_sort.rb or adjust the path accordingly

class MergeSortTest < Minitest::Test
  def test_empty_array
    assert_equal [], merge_sort([])
  end

  def test_single_element_array
    assert_equal [1], merge_sort([1])
  end

  def test_sorted_array
    assert_equal [1, 2, 3, 4, 5], merge_sort([1, 2, 3, 4, 5])
  end

  def test_reverse_sorted_array
    assert_equal [1, 2, 3, 4, 5], merge_sort([5, 4, 3, 2, 1])
  end

  def test_unsorted_array
    assert_equal [1, 2, 5, 5, 6, 9], merge_sort([5, 2, 9, 1, 5, 6])
  end

  def test_array_with_duplicates
    assert_equal [1, 2, 2, 3, 3, 4], merge_sort([3, 2, 4, 2, 1, 3])
  end

  def test_array_with_negative_numbers
    assert_equal [-10, -5, 0, 5, 10], merge_sort([10, -5, 0, 5, -10])
  end
end
