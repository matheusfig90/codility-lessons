=begin
  
A zero-indexed array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.

Your goal is to find that missing element.

Write a function:

  def solution(a)

that, given a zero-indexed array A, returns the value of the missing element.

For example, given array A such that:

  A[0] = 2
  A[1] = 3
  A[2] = 1
  A[3] = 5

the function should return 4, as it is the missing element.

Assume that:

  - N is an integer within the range [0..100,000];
  - the elements of A are all distinct;
  - each element of array A is an integer within the range [1..(N + 1)].

Complexity:

  - expected worst-case time complexity is O(N);
  - expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).

Elements of input arrays can be modified.

Results:

    Test score: 50%
    Correctness: 100%
    Performance: 0%
    Link: https://codility.com/demo/results/trainingWKH8CX-JBV/
  
=end

def solution(a)
  return 1 if a.empty?

  ((1..a.size + 1).to_a.inject(&:+) - a.inject(&:+)).abs
end

# Testing
require 'minitest/autorun'

class TaskTest < MiniTest::Unit::TestCase
  def test_example
    assert_equal 4, solution([2,3,1,5])
  end

  def test_empty
    assert_equal 1, solution([])
  end

  def test_single_element
    assert_equal 1, solution([2])
  end
end
