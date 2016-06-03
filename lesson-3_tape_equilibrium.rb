=begin
  
A non-empty zero-indexed array A consisting of N integers is given. Array A represents numbers on a tape.

Any integer P, such that 0 < P < N, splits this tape into two non-empty parts: A[0], A[1], ..., A[P − 1] and A[P], A[P + 1], ..., A[N − 1].

The difference between the two parts is the value of: |(A[0] + A[1] + ... + A[P − 1]) − (A[P] + A[P + 1] + ... + A[N − 1])|

In other words, it is the absolute difference between the sum of the first part and the sum of the second part.

For example, consider array A such that:

  A[0] = 3
  A[1] = 1
  A[2] = 2
  A[3] = 4
  A[4] = 3

We can split this tape in four places:

  - P = 1, difference = |3 − 10| = 7 
  - P = 2, difference = |4 − 9| = 5 
  - P = 3, difference = |6 − 7| = 1 
  - P = 4, difference = |10 − 3| = 7 

Write a function:

  def solution(a)

that, given a non-empty zero-indexed array A of N integers, returns the minimal difference that can be achieved.

For example, given:

  A[0] = 3
  A[1] = 1
  A[2] = 2
  A[3] = 4
  A[4] = 3

the function should return 1, as explained above.

Assume that:

  - N is an integer within the range [2..100,000];
  - each element of array A is an integer within the range [−1,000..1,000].

Complexity:

  - expected worst-case time complexity is O(N);
   - expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

Results:

    Test score: 50%
    Correctness: 100%
    Performance: 0%
    Link: https://codility.com/demo/results/trainingDAXJ7D-YW4/
  
=end

def solution(a)
  min_diff = nil

  1.upto(a.size - 1) do |i|
    diff = 0

    a.size.times do |j|
      diff += a[j] * (j < i ? 1 : -1)
    end

    if (min_diff == nil or min_diff > diff.abs)
      min_diff = diff.abs
    end
  end

  min_diff
end

Testing
require 'minitest/autorun'

class TaskTest < MiniTest::Unit::TestCase
  def test_example
    assert_equal 1, solution([3,1,2,4,3])
  end

  def test_two_elements
    assert_equal 2000, solution([-1000,1000])
  end
end
