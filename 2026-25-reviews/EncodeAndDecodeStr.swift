class Solution {

    func encode(_ strs: [String]) -> String {
         var result = ""

         for str in strs {
            result.append(str + "-")
         }

         return result
    }

    func decode(_ str: String) -> [String] {
        var result: [String] = str.components(separatedBy: "-").dropLast()
        return result
    }
}
