=begin

A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at
both ends in the binary representation of N.

For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary
representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary
representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no
binary gaps.

Write a function:
    
  def solution(n)

that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N
doesn't contain a binary gap.

For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its
longest binary gap is of length 5.

Assume that:

  - N is an integer within the range [1..2,147,483,647]. 

Complexity:

  - expected worst-case time complexity is O(log(N)); 
  - expected worst-case space complexity is O(1).

Results:

  Test score: 100%
  Correctness: 100%
  Performance: not assessed
  Link: https://codility.com/demo/results/trainingC9YQDK-4FN/

=end

def solution(n)
  binary = n.to_s(2) # Convert to binary

  zeros = binary.split('1')
  zeros.pop if n % 2 == 0 # Ignoring last zeros

  # The function should return 0 if N doesn't contain a binary gap
  return 0 if zeros.empty?

  zeros.map { |zero| zero.length }.max
end

# Testing
require 'minitest/autorun'

class TaskTest < MiniTest::Unit::TestCase
  def test_example
    assert_equal 5, solution(1041)
  end

  def test_without_zeros
    assert_equal 0, solution(15)
  end

  def test_zeros_in_the_end
    assert_equal 0, solution(6)
  end
end
