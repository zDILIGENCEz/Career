class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        var i = result.count - 1
        while i >= 0 {
            if result[i] == 9 {
                if i == 0 {
                    result[i] = 0
                    result.insert(1, at: 0)
                    i = -1
                } else {
                    result[i] = 0
                i -= 1
                }
            } else {
                result[i] += 1
                i = -1
            }
        }
        
        return result
    }
}