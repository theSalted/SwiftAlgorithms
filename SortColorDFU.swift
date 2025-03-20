
class Solution {
    func sortColors(_ nums: inout [Int]) {
        var i = 0
        var l = 0
        var r = nums.count - 1
        
        while i <= r {
            if nums[i] == 0 {
                nums.swapAt(l, i)
                l += 1
            } else if nums[i] == 2 {
                nums.swapAt(i, r)
                r -= 1
                i -= 1
            }

            i += 1
        }
    }
}
