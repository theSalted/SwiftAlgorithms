
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var result: [[Int]] = [intervals[0]]
        
        for i in 1..<intervals.count {
            print("result: ", result)
            print("intervals: ", intervals[i])
            let last = result.last!
            result.removeLast()
            result += merge(last, intervals[i])
            
            print("result after: ", result)

        } 

        return result
    }

    func merge(_ lhs: [Int], _ rhs: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var (lhs, rhs) = (lhs[0] + lhs[1]) < (rhs[0] + rhs[1]) ? (lhs, rhs) : (rhs, lhs)

        if (lhs[0] <= lhs[1] && lhs[1] < rhs[0] && rhs[0] < rhs[1]) {
            result.append(lhs)
            result.append(rhs)
        } else {
            var merged = rhs + lhs
            merged = merged.sorted()
            result.append([merged.first!, merged.last!])
        }

        return result
    }
}
