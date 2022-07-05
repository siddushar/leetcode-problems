Problem:  https://leetcode.com/problems/first-unique-character-in-a-string

Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

 

Example 1:

Input: s = "leetcode"
Output: 0

Example 2:
Input: s = "loveleetcode"
Output: 2

Example 3:
Input: s = "aabb"
Output: -1


# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  hash = Hash.new(0)
  
  for i in 0...s.length do
    hash[s[i]] +=1
  end
  
   for i in 0...s.length do
     return i if  hash[s[i]] == 1
   end
  -1
end
