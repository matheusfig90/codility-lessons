=begin

A non-empty zero-indexed array A consisting of N integers is given.

A permutation is a sequence containing each element from 1 to N once, and only once.

For example, array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3
    A[3] = 2

is a permutation, but array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3

is not a permutation, because value 2 is missing.

The goal is to check whether array A is a permutation.

Write a function:

  def solution(a)

that, given a zero-indexed array A, returns 1 if array A is a permutation and 0 if it is not.

For example, given array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3
    A[3] = 2

the function should return 1.

Given array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3

the function should return 0.

Assume that:

  - N is an integer within the range [1..100,000];
  - each element of array A is an integer within the range [1..1,000,000,000].

Complexity:

  - expected worst-case time complexity is O(N);
  - expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

Elements of input arrays can be modified.

Results:

    Test score: 100%
    Correctness: 100%
    Performance: 100%
    Link: https://codility.com/demo/results/training98CRKC-MH6/

=end

def solution(a)
  1.upto(a.size) do |i|
    exists = false
    a.each do |j|
      if j == i
        exists = true
        break
      end
    end

    return 0 if not exists
  end

  1
end


# Testing
require 'minitest/autorun'

class TaskTest < MiniTest::Unit::TestCase
  def test_example_permutation
    assert_equal 1, solution([4,1,3,2])
  end

  def test_example_not_permutation
    assert_equal 0, solution([4,3,3])
  end

  def test_example_not_permutation_2
    assert_equal 0, solution([0,3,3])
  end
end

