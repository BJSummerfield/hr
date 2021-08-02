def hourglassSum(arr)
  bestSum = -65
  columns = arr.length
  rows = arr[0].length
  (columns - 2).times do |i|
    (rows - 2).times do |j|
        currentSum =
          arr[i][j] +
          arr[i][j + 1] +
          arr[i][j + 2] +
          arr[i + 1][j + 1] +
          arr[i + 2][j] +
          arr[i + 2][j + 1] +
          arr[i + 2][j + 2]
          bestSum = currentSum if currentSum > bestSum
    end
  end
  return bestSum
end

arr = [
[1,1,1,0,0,0],
[0,1,0,0,0,0],
[1,1,1,0,0,0],
[0,0,2,4,4,0],
[0,0,0,1,8,0],
[0,0,1,2,4,1]
]

p hourglassSum(arr)
