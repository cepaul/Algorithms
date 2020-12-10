import UIKit

func insertionSort(_ array: [Int]) -> [Int] {
  var a = array
  
  /// The outer loop starts at index 1, not 0.
  /// Moving the very first element from the pile to the sorted portion
  /// doesn't actually change anything, so we might as well skip it.
  for n in 1..<a.count {
    var y = n /// initial index value
    
    /// while:
    /// index >  0
    /// element < element before it
    while y > 0 && a[y] < a[y - 1] {
      (a[y], a[y-1]) = (a[y-1], a[y]) // also swaps elements
      
//      a.swapAt(y - 1, y) /// swap elements
      y -= 1 /// update index value stepping backwards
    }
  }
  
  return a
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSort(list)
