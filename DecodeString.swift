class Solution {
    func decodeString(_ s: String) -> String {
        var intStack = [Int]()
        var stringStack = [String]()
        var currentString = ""
        var counter = 0

        for char in s {
            if char == "[" {
                intStack.append(counter)
                stringStack.append(currentString)
                counter = 0
                currentString = ""
            } else if char == "]" {
                let num = intStack.removeLast()
                let prevString = stringStack.removeLast()
                currentString = prevString + String(repeating: currentString, count: num)
            } else if let num = Int(String(char)) {
                counter = 10 * counter + num
            } else {
                currentString.append(char)
            }
        }


        return currentString
    }
}
