import UIKit

func sockMerchant(n: Int, ar: [Int]) -> Int {
    let crossReference = Dictionary(grouping: ar, by: { $0 })
    print(crossReference)
    let pairs = crossReference.map{ $1.count / 2 }
    print(pairs)
    let pairsCount = pairs.reduce(0, +)
    print(pairsCount)
    
    let test = Dictionary(grouping: ar){ $0 }.map { $1.count / 2 }.reduce(0, +)
    print(test)
    return 0
}

var str = [10, 20, 20, 10, 10, 30, 50, 10, 20]

sockMerchant(n: 9, ar: str)
