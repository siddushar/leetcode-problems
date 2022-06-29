Problem: https://leetcode.com/problems/longest-palindromic-substring

Given a string s, return the longest palindromic substring in s.

 

Example 1:

Input: s = "babad"
Output: "bab"
Explanation: "aba" is also a valid answer.
  

Example 2:

Input: s = "cbbd"
Output: "bb"

Solution:


# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if s.length <=1
  
  palidrome =''
  
  for i in 0...s.length do
    even = expand_from_center(s, i, i)
    odd = expand_from_center(s, i, i+1)
    palidrome = [palidrome, even, odd].max_by(&:length)
  end
  palidrome
end

def expand_from_center(str, _start, _end)
  while(_start >= 0 && _end < str.length && (str[_start] == str[_end]))
    _start -=1
    _end +=1
  end
  
  str[_start+1.._end-1]
end
