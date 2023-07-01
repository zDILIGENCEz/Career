class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false}
        var arrayOfInt = [Int]()
        var value = x
        while value >= 0 {
            var int = value % 10
            arrayOfInt.append(int)
            value = value / 10
            if value == 0 {
                break
            }
        }
        
        return arrayOfInt == arrayOfInt.reversed()
    }
}