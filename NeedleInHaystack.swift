class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var haystack = haystack.map({"\($0)"})
        var needle = needle.map({"\($0)"})
        
        var result = -1
        outerLoop: for (i, char) in haystack.enumerated() {
            if needle.count > haystack.count {
                return -1
            }
            if needle.contains(char) {
                result = i
                for (ni, n) in needle.enumerated() {
                    guard n == haystack[ni] else {
                        haystack.removeFirst()
                        continue outerLoop
                    }
                }
                return result
            }
            haystack.removeFirst()
        }

        return -1
    }
}
