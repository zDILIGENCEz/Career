class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        for index in 0..<haystack.count {
            if haystack[haystack.index(haystack.startIndex, offsetBy: index)] == needle[needle.startIndex] {
                if haystack[haystack.index(haystack.startIndex, offsetBy: index)...haystack.index(haystack.startIndex, offsetBy: haystack.count - 1)].hasPrefix(needle) {
                    return index
                }
            }
                
        }
        return -1
    }
}