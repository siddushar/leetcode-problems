Problem: https://leetcode.com/problems/reverse-integer

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

Example 1:
Input: x = 123
Output: 321

Example 2:
Input: x = -123
Output: -321

Example 3:
Input: x = 120
Output: 21
  
Solution:
  
# @param {Integer} x
# @return {Integer}
def reverse(x)
  
  return 0 if x == 0 || is_int_overflow?(x)
  clone_num = x
  x = -(x) if x < 0
  reverse = 0
  
  while(x>0)
    rem = x % 10
    reverse = (reverse * 10) + rem
    x = x/10
  end
  return 0 if is_int_overflow?(reverse)
  return -1 * reverse if clone_num < 0
  reverse
end
  
def is_int_overflow?(num)
   num > (2**31 -1) || num < (-2**31)
end
