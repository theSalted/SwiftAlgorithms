
class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let sorted = nums.sorted()

        return sorted[sorted.count - k]
    }
}

