class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set(nums)
        return nums.count != set.count
    }
}
