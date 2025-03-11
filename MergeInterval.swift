
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var intervals = intervals.sorted { $0[0] <= $1[0] }
        var result = [intervals.first!]

        for interval in intervals {
            if (interval[0] <= result.last![1]) {
                result[result.count - 1][1] = max(result.last![1], interval[1])
            } else {  
                result.append(interval)
            }
        }

        return result
    }
}
