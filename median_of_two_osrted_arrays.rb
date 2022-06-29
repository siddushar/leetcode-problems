Problem:  https://leetcode.com/problems/median-of-two-sorted-arrays

Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

The overall run time complexity should be O(log (m+n)).

 

Example 1:

Input: nums1 = [1,3], nums2 = [2]
Output: 2.00000
Explanation: merged array = [1,2,3] and median is 2.
  

Example 2:

Input: nums1 = [1,2], nums2 = [3,4]
Output: 2.50000
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5


Solution: Using merge sort

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  sorted_array = merge_sort(nums1 + nums2)
  
  len = sorted_array.length
  mid = len/2
  
  if len.even?
    (sorted_array[mid-1] + sorted_array[mid])/2.0
  else
    sorted_array[mid]
  end
end

def merge_sort(arr)
   return arr if arr.length <= 1
  
  mid =  (arr.length/2).floor
  
  left = merge_sort(arr[0..mid-1])
  right = merge_sort(arr[mid..arr.length])
  merge(left, right)
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end
