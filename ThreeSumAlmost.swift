
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var visted = [Int]()

        for i in 0..<nums.count {
            var diff = 0 - nums[i];

            if let res = twoSum(visted, target: diff) {
                result.append([nums[i], res.0, res.1])
                continue
            }

            visted.append(nums[i])
        }

        return result
    }

    func twoSum(_ nums: [Int], target: Int) -> (Int, Int)? {
        var visited = Set<Int>()
        for num in nums {
            let diff = target - num
            if visited.contains(diff) {
                return (diff, num)
            }
            visited.insert(num)
        }
        return nil
    }
}
