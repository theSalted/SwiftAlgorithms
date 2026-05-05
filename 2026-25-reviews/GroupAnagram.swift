class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var store = [String: [String]]()

        for str in strs {
            let sorted = String(str.sorted())
            var item = (store[sorted] ?? [String]())
            item.append(str)
            store[sorted] = item
        }

        return Array(store.values)
    }
}
