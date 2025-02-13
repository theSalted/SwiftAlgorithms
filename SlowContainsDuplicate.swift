// Very Slow methodology

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var nums = nums

        for num in nums {
            nums.removeFirst()
            if nums.contains(num) {
                return true
            }
        }

        return false
    }
}
