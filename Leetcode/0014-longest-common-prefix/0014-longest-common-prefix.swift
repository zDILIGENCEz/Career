class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix: String = ""
        
        guard let firstString = strs.sorted(by: { $0.count < $1.count}).first else {
            return prefix
        }
        
        for i in 0...firstString.count {
            var extendPrefix = false
            for id in 0..<strs.count {
                extendPrefix = true
                print("element - \(strs[id]) | prefix - \(prefix) = \(strs[id].hasPrefix(prefix))")
                if !strs[id].hasPrefix(prefix) {
                    return String(prefix.dropLast())
                }
            }
            if extendPrefix && i != firstString.count {
                prefix.append(firstString[firstString.index(firstString.startIndex, offsetBy: i)])
                print("\n")
            }
        }
        
        return prefix
    }
}