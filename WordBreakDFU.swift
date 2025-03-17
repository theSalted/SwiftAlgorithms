
class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        guard !s.isEmpty else { return false }
        let len = s.count
        let wordSet = Set(wordDict)
        let arrS = Array(s)
        let maxw = wordSet.reduce(0, { max($0, $1.count) })

        var dp = [Bool](repeating: false, count: len + 1)
        dp[0] = true

        for a in 0..<len where dp[a] {
            for b in a + 1...(min(len, a + 1 + maxw)) where wordSet.contains(String(arrS[a..<b])) {
                dp[b] = true
            }
        }

        return dp[len]
    }
}
