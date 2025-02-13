class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var record = Set<String>()
        var lhs = 0
        var res = 0
        let s = s.map {"\($0)"}
        for r in 0..<s.count {
            while record.contains(s[r]) {
                record.remove(s[lhs])
                lhs += 1
            }

            record.insert(s[r])
            res = max(res, r - lhs + 1)
        }


        return res
        
    }
}
// Don't fully understand
