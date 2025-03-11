class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [1]

        for i in 0..<nums.count - 1 {
            result.append(nums[i] * result[i])
        }

        print(result)
        var suffix = 1
        for (i, num) in nums.reversed().enumerated() {
            result[nums.count - 1 - i] *= suffix
            suffix *= num
        }

        return result
    }
}
