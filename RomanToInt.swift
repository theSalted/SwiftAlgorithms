class Solution {
    func romanToInt(_ s: String) -> Int {
        var value: Int = 0
        var prev: Int = 0

        for char in s {
            guard let roman = Roman(rawValue: "\(char)") else {
                continue
            }

            if prev == 0 {
                prev = roman.toValue()
                continue
            }

            if prev < roman.toValue() {
                value -= prev
            } else {
                value += prev
            }

            prev = roman.toValue()
        }

        return value + (prev ?? 0)
    }

    enum Roman: String {
        case I, V, X, L, C, D, M
        
        func toValue() -> Int {
            switch self {
            case .I: 1
            case .V: 5
            case .X: 10
            case .L: 50
            case .C: 100
            case .D: 500
            case .M: 1000
            }
        }
    }
}
