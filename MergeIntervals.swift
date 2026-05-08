class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let sorted = intervals.sorted(by: { $0[0] < $1[0] })
        var result = [sorted[0]]

        for interval in sorted {
            var start = interval[0]
            var end = interval[1]
            var lastEnd = result[result.count - 1][1]

            if start <= lastEnd {
                result[result.count - 1][1] = max(lastEnd, end)
            } else {
                result.append([start, end])
            }
        }

        return result
    }
}

