class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var current = 0
        for num in nums {
            if current < 0 {
                current = 0
            }
            current += num
            result = max(result, current)
        }
        return result
    }
}
