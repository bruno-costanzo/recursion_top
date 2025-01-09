require 'minitest/autorun'
require_relative '../fib' #

class FibTest < Minitest::Test
  def test_with_n_8
    assert_equal [0, 1, 1, 2, 3, 5, 8, 13], fibs(8)
  end
end
