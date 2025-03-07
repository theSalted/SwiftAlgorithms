
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var sortedNums = nums.sorted()
        var result = Set<[Int]>()
        for i in 0..<sortedNums.count {
            var j = i + 1
            var k = sortedNums.count - 1

            while j < k {
                print(i, j, k)
                let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]

                if sum == 0 {
                    result.insert([sortedNums[i], sortedNums[j], sortedNums[k]])
                    j += 1
                    k -= 1
                } else if sum > 0 {
                    k -= 1
                } else {
                    j += 1
                }
            }
        }
        
        return Array(result)
    }
}
