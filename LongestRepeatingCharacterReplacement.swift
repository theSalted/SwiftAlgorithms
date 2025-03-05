class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var charSet = Set<Character>()
        var result = 0
        
        for char in s {
            var count = 0
            var lhs = 0

            for rhs in 0..<s.count {
                if Array(s)[rhs] == char {
                    count += 1
                }

                while ((rhs - lhs + 1) - count > k) {
                    if (Array(s)[lhs] == char) {
                        count -= 1
                    }

                    lhs += 1
                }
                result = max(result, rhs - lhs + 1)
            }
        }

        return result
    }
}
