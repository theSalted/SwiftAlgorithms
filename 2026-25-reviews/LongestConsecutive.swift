class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let sorted = Set(nums).sorted()

        var last: Int? = nil
        var current = nums.isEmpty ? 0 : 1
        var best = 0

        for num in sorted {
            if let last {
                if num == last + 1 || num == last {
                    current += 1
                } else {
                    current = 1 
                }
            } 
            last = num 
            best = max(best, current)
        }

        return best
    } 
}
