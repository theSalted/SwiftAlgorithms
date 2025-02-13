// This is an average speed implmentation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var record = Set<Int>()
        for num in nums {
            if record.contains(num) {
                return true
            }

            record.insert(num)
        }

        return false
    }
}
