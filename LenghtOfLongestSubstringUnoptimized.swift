
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = 1

        if s.count == 0 {
            return 0
        }

        for lhs in 0..<s.count {
            var characterStore = Set<String>()
            var rhs = lhs
            while rhs < s.count {
                let rhsChar = "\(s[s.index(s.startIndex, offsetBy: rhs)])"
                guard !characterStore.contains(rhsChar) else {
                    result = max(result, rhs - lhs)
                    break
                }
                characterStore.insert(rhsChar)
                rhs += 1

                if rhs == s.count {
                    guard !characterStore.contains(rhsChar) else {
                        result = max(result, rhs - lhs)
                        break
                    }
                }
            }
        }

        return result
    }
}
