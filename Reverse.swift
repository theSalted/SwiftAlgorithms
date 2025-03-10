class Solution {
    func reverse(_ x: Int) -> Int {
        let isNegative = x < 0
        var result = Int(String("\(abs(x))".reversed()))!
        result = isNegative ? -result : result
        if result > 2147483647 {
            return 0
        }
        if result < -2147483648 {
            return 0
        }
        return result
    }
}
