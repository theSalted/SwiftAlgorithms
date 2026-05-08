class Solution {
    func customSortString(_ order: String, _ s: String) -> String {
        var lookup = [Character: String.Index]()
        var index = order.startIndex
        while index < order.endIndex { 
            lookup[order[index]] = index
            index = order.index(after: index)
        }

        return String(s.sorted(by: {
            lookup[$0, default: order.startIndex] < lookup[$1, default: order.startIndex]
        }))
    }
}
