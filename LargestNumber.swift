class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        let arr = nums.map { String($0) }.sorted { current, next in current + next > next + current }

        let res = arr.joined()

        return res.first == "0" ? "0" : res
    }
}

