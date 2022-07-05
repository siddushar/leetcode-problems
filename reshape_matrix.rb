Problem: https://leetcode.com/problems/reshape-the-matrix

In MATLAB, there is a handy function called reshape which can reshape an m x n matrix into a new one with a different size r x c keeping its original data.
You are given an m x n matrix mat and two integers r and c representing the number of rows and the number of columns of the wanted reshaped matrix.
The reshaped matrix should be filled with all the elements of the original matrix in the same row-traversing order as they were.

If the reshape operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.

 

Example 1:
Input: mat = [[1,2],[3,4]], r = 1, c = 4
Output: [[1,2,3,4]]

Example 2:
Input: mat = [[1,2],[3,4]], r = 2, c = 4
Output: [[1,2],[3,4]
  
  
# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  rows = mat.length
  cols = mat[0].length
  
  return mat if (cols*rows != r*c)
  
  rows_count =0
  cols_count =0
  new_mat = Array.new(r) { Array.new(c) }
  
  for i in 0...rows do
    for j in 0...cols do
      new_mat[rows_count][cols_count]= mat[i][j]
      cols_count +=1
      if cols_count == c
        cols_count = 0
        rows_count += 1
      end
    end
  end
  new_mat
end
