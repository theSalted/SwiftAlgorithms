class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var store = [Int: Int]()

        for (index, num) in nums.enumerated() {
            let diff = target - num

            if let prev = store[diff] {
                return [prev, index]
            }

            store[num] = index
        }

        return []
    }
}
