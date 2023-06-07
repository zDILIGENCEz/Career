class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for i in 0..<9 {
            let rowDigits = board[i].filter { $0 != "." }
            if rowDigits.count != Set(rowDigits).count {
                return false
            }

            let colDigits = board.map { $0[i] }.filter { $0 != "." }
            if colDigits.count != Set(colDigits).count {
                return false
            }

            let firstRow = 3 * (i / 3)
            let firstCol = 3 * (i % 3)
            let blockDigits = board[firstRow..<firstRow+3].flatMap { $0[firstCol..<firstCol+3]}
                .filter { $0 != "." }
            if blockDigits.count != Set(blockDigits).count {
                return false
            }       
        }

        return true
    }
}