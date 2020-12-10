import UIKit

func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
 
  if range.lowerBound >= range.upperBound {
    /// key is not in the array
    return nil
  } else {
    /// split the array
    let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    /// Is the search key in the left or right half?
    if a[midIndex] > key {
      /// search left half
      return binarySearch(a, key: key, range: range.lowerBound..<midIndex)
      
    } else if a[midIndex] < key {
      /// search right half
      return binarySearch(a, key: key, range: midIndex + 1..<range.upperBound)
      
    } else {
      /// found the key!
      return midIndex
    }
    
  }
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

binarySearch(numbers, key: 43, range: 0 ..< numbers.count)
