class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var maxProfit: Int = 0
        
        guard prices.count > 1 else {
            return maxProfit    
        }
        
        /*var buyPrice: Int? 
        
        for day in 0..<prices.count - 1 {
            // print(day)
            // print(buyPrice == nil, prices[day] > prices[day + 1], day == prices.count - 2)
            switch (buyPrice == nil, prices[day] > prices[day + 1], day == prices.count - 2) {
                case (true, false ,let isLastDay): // buy
                    // print("buy for price \(prices[day])")
                    buyPrice = prices[day]
                    if isLastDay {
                        maxProfit += prices[day + 1] - buyPrice!
                        buyPrice = nil
                    }
                case (false, true, _): // sell
                    maxProfit += prices[day] - buyPrice!
                    // print("sell for price \(prices[day] - buyPrice!)")
                    buyPrice = nil
                case (false, false, true):
                    maxProfit += prices[day + 1] - buyPrice!
                    buyPrice = nil
                default: 
                    // print("Break")
                    break
            }
        }*/
        
        var today = 0
        var tomorrow = 1
        
        while tomorrow < prices.count {
            if prices[tomorrow] > prices[today] {
                maxProfit += prices[tomorrow] - prices[today]
            }
            today += 1
            tomorrow += 1
        }
        
        return maxProfit
    }
}

//[10,20,30,100,10, 1000]
//[1,2,3,4,5]