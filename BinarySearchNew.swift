
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var rhs = 0
        var lhs = nums.count - 1

        while rhs <= lhs {
            let mid = (rhs + lhs) / 2
            let num = nums[mid]
            if num == target {
                return mid
            }
            if num < target {
                rhs = mid + 1
            } else if num > target {
                lhs = mid - 1
            }
        }

        return -1
    }
}
