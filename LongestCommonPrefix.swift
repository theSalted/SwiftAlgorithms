
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let strs = strs.sorted()
        var result = ""

        guard let first = strs.first, let last = strs.last else {
            return result
        }

        for (char1, char2) in zip(first, last) {
            if (char1 == char2) {
                result += "\(char1)"
            } else {
                return result
            }
        }

        return result
    }
}
