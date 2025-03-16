
class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        guard m > 0 else { return 0 }
        var dp = [Int](repeating: 1, count: n)
        for _ in 1..<m {
            for c in 1..<n {
                dp[c] += dp[c - 1]
            }
        }
        return dp.last ?? 0
    }
}
