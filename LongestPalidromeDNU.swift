
class Solution {
    func longestPalindrome(_ s: String) -> String {
        let len = s.count, arr = Array(s)
        if len <= 1 { return s }
        var lhs = 0, rhs = 0, dp = Array(repeating: Array(repeating: false, count: len), count: len)
        for i in 1..<len {
            for j in 0..<i where arr[j] == arr[i] && (dp[j+1][i-1] || i - j <= 2) {
                dp[j][i] = true
                if i - j > rhs - lhs {
                    lhs = j
                    rhs = i
                }
            }
        }
        return String(arr[lhs...rhs])
    }
}
