class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var intervals = intervals
        intervals.append(newInterval)
        intervals.sort(by: { $0[0] < $1[0] })
        var result = [intervals[0]]
        
        for interval in intervals {
            let start = interval[0]
            let end = interval[1]
            let lastEnd = result[result.count - 1][1]

            if start <= lastEnd {
                result[result.count - 1][1] = max(end, lastEnd)
            } else {
                result.append([start, end])
            }
        }

        return result
    }
}

