
// I don't fully understand

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lhs = 0
        var rhs = nums.count - 1
        while lhs <= rhs {
            let mid = (rhs - lhs) / 2 + lhs
            let val = (lhs: nums[lhs], mid: nums[mid], rhs: nums[rhs])
            if val.mid == target { return mid }
            func moveRhs() { rhs = mid - 1 }
            func moveLhs() { lhs = mid + 1 }
            if val.mid >= val.lhs {
                val.mid > target && target >= val.lhs ? moveRhs() : moveLhs()
            } else {
                val.mid < target && target <= val.rhs ? moveLhs() : moveRhs()
            }
        }
        return -1
    }
}
