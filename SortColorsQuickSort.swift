class Solution {

    func sortColors(_ nums: inout [Int]) {
        nums = quickSort(nums)
    }

    func quickSort(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        let pivot = nums[nums.count / 2]

        let less = nums.filter { $0 < pivot }
        let equal = nums.filter { $0 == pivot }
        let more = nums.filter { $0 > pivot }

        return quickSort(less) + equal + quickSort(more)
    }
}
