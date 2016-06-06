=begin
  
Write a function:

  def solution(a)

that, given a non-empty zero-indexed array A of N integers, returns the minimal positive integer (greater than 0) that does not occur in A.

For example, given:

  A[0] = 1
  A[1] = 3
  A[2] = 6
  A[3] = 4
  A[4] = 1
  A[5] = 2

the function should return 5.

Assume that:

  - N is an integer within the range [1..100,000];
  - each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].

Complexity:

  - expected worst-case time complexity is O(N);
  - expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

Elements of input arrays can be modified.

Results:

    Test score: 66%
    Correctness: 100%
    Performance: 25%
    Link: https://codility.com/demo/results/trainingYX6R9G-ES5/
  
=end

def solution(a)
  1.upto(a.size) do |i|
    exists = false
    a.each do |n|
      if i == n
        exists = true
        break
      end
    end

    return i unless exists
  end

  (a.size + 1)
end

# Testing
require 'minitest/autorun'

class TaskTest < MiniTest::Unit::TestCase
  def test_example
    assert_equal 5, solution([1,3,6,4,1,2])
  end

  def test_example_single_element
    assert_equal 2, solution([1])
  end
end


