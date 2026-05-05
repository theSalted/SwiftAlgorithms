class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var store = [Int : Int]()

        for num in nums {
            store[num, default: 0] += 1
        }

        var array: [Int] = Array(store
            .sorted(by: { $0.1 > $1.1 })
            .map { $0.0 }
            .prefix(k))

        return array
    }
}
