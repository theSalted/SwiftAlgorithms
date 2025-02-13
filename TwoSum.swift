class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var record: [Int: Int] = [:]

        for (i, n) in nums.enumerated() {
            if let r = record[target - n] {
                return [r, i]
            }
            record[n] = i
        }
        return []
    }
}
