class Solution {
    func isValid(_ s: String) -> Bool {
        // Bracket need to be closed in the order they are open
        // So we use a stack and first in last out
        let s = s.map {"\($0)"}
        var stack = [String]()

        for c in s {
            if isOpenning(c) {
                stack.append(c)
            } else {
                if stack.count == 0 {
                    return false
                }
                let last = stack.removeLast()
                if !isPair(last, c) {
                    return false
                }
            }
        }

        return stack.count == 0
    }

    func isOpenning(_ s: String) -> Bool {
        return s == "(" || s == "{" || s == "["
    }

    func isPair(_ lhs: String, _ rhs: String) -> Bool {
        return (lhs == "{" && rhs == "}") ||
               (lhs == "(" && rhs == ")") ||
               (lhs == "[" && rhs == "]")
    }

}
