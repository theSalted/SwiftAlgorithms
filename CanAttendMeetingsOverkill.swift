/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class Solution {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        let startTimes = intervals.map { $0.start }.sorted()
        let endTimes = intervals.map { $0.end }.sorted() 

        var counter = 0
        var i = 0, j = 0
        while i < intervals.count {
            if startTimes[i] < endTimes[j] {
                counter += 1
                i += 1
            } else {
                counter -= 1
                j += 1
            }

            if counter > 1 { return false }
        }

        return true
    }
}

