class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""

        var i = 0
        while true {
            var charSet = Set<String>()
            for str in strs {
                if (str.count - 1) < i {
                    return result
                }
                let char = "\(str[str.index(str.startIndex, offsetBy: i)])"
                charSet.insert(char)
            }
            if charSet.count != 1  {
                return result
            }
            // result += charSet[0]
            result += charSet.first!
            i += 1
        }

        return result
    }
}
