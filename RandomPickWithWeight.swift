

class Solution {
    var scale = [Int]()
    var sum = 0

    init(_ w: [Int]) {
        // Plot weight on a scale
        for weight in w {
            sum += weight
            scale.append(sum)
        }
    }
    
    func pickIndex() -> Int {
        let random = Int.random(in: 1...sum)
        var lhs = 0
        var rhs = scale.count - 1

        while lhs < rhs {
            let mid = (lhs + rhs) / 2
            if scale[mid] == random {
                return mid
            } else if scale[mid] < random {
                lhs = mid + 1
            } else {
                rhs = mid
            }
        }
        return lhs
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(w)
 * let ret_1: Int = obj.pickIndex()
 */
