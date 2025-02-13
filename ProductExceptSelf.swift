class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        // Any number multiple 0 is also 0
        // We should have an array to keep track of result
        // We can always brute force 
        // Product of left side and right side?

        var result  = [1]
        let count = nums.count - 1
        for (i, num) in nums.enumerated() {
            if i == count {
                break
            }
            result.append(result[i] * num)
        }
        var suffix = 1
        for (i, num) in nums.reversed().enumerated() {
            result[count - i] *= suffix
            suffix *= num
        }

        return result
    }
}
