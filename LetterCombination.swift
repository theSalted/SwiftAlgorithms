
func letterCombinations(_ digits: String) -> [String] {
    // Return empty array if digits is empty
    if digits.isEmpty {
        return []
    }
    
    var result = [String]()
    let combination = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    var temp = ""
    
    func dfs(_ x: Int) {
        if x == digits.count {
            result.append(temp)
            return
        }
        
        let digit = Int(String(digits[digits.index(digits.startIndex, offsetBy: x)]))!
        for character in combination[digit] {
            temp.append(character)
            dfs(x+1)
            temp.removeLast() // Backtrack by removing the last character
        }
    }
    
    dfs(0)
    return result
}
