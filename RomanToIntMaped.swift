
class Solution {
    let charToInt: [String: Int] = [
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100,
        "D" : 500,
        "M" : 1000
    ]

    let toPrevInt: [String: Int] = [
        "I" : 0,
        "V" : 1,
        "X" : 1,
        "L" : 10,
        "C" : 10,
        "D" : 100,
        "M" : 100
    ]

    func romanToInt(_ s: String) -> Int {
        var result = 0
        var prev = 0
        for char in s {
            let value = charToInt["\(char)"]!
            result += value - (prev == toPrevInt["\(char)"]! ? prev * 2 : 0)
            prev = value
        }
        return result
    }
}
