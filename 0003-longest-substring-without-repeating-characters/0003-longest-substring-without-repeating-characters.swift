class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charSet: [Character] = [Character]()
        var longestLength = 0
        for char in s {
            if let duplicateStringIdx = charSet.firstIndex(of: char) {
                charSet.removeSubrange(0...duplicateStringIdx)
            }
            charSet.append(char)
            longestLength = max(longestLength, charSet.count)
        }
        return longestLength
    }
}