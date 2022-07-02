Problem: https://leetcode.com/problems/intersection-of-two-arrays-ii

Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.

 

Example 1:
Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2,2]

Example 2:
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [4,9]
Explanation: [9,4] is also accepted.
  

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  hash = Hash.new(0)
  res = []

  nums2.each {|x| hash[x] +=1 }
  
  nums1.each do |n|
    if hash[n]
      res << n if hash[n] >= 1
      hash[n] -= 1
    end
  end
end
