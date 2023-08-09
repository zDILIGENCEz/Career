class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows != 1 else {
            return s
        }
        var resultedString: String = ""
        var zigzagArr = [[Any]]()
        
        for _ in 0..<numRows {
            zigzagArr.append(Array(repeating: 111, count: 1))
        }
        
        var i = 0
        var j = 0
        var isDown = true

        s.forEach { char in
            zigzagArr[i][j] = char
            switch isDown {
            case true:
                if i == numRows - 1 {
                    i -= 1
                    j += 1
                    isDown = false
                    addColumn(arr: &zigzagArr)
                } else {
                    i += 1
                }
            case false:
                if i == 0 {
                    i += 1
                    isDown = true
                }
                else {
                    i -= 1
                    j += 1
                    addColumn(arr: &zigzagArr)
                }
            }
        }
        
        zigzagArr.forEach { arr in
            arr.forEach { element in
                if let el = element as? Character {
                    resultedString.append(el)
                }
            }
        }
        return resultedString
    }
    
    private func addColumn(arr: inout [[Any]]) {
        for i in 0..<arr.count {
            arr[i].append(111)
        }
    }
}