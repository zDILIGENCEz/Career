class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxCount: Int = 0
        var uniqueArray = [Character]()
        for char in s {
            var shouldAddElement = true
            var ununiqueChar: Character = " "
            uniqueArray.forEach { arrChar in
                if char == arrChar {
                    ununiqueChar = char
                    shouldAddElement = false
                }
            }
            if shouldAddElement {
                uniqueArray.append(char)
                maxCount = uniqueArray.count > maxCount ? uniqueArray.count : maxCount
            } else {
                var endFlag = false
                while !endFlag {
                    if uniqueArray[0] == ununiqueChar {
                        endFlag = true
                        uniqueArray.append(ununiqueChar)
                    }
                    uniqueArray.removeFirst()
                }
            }
        }
        
        return maxCount
    }
}