import UIKit

func merge(left: [Int], right: [Int]) -> [Int] {
  var leftIndex = 0
  var rightIndex = 0
  
  var orderedArray: [Int] = []
  
  while leftIndex < left.count && rightIndex < right.count {
    if left[leftIndex] < right[rightIndex] {
      orderedArray.append(left[leftIndex])
      leftIndex += 1
    } else if left[leftIndex] > right[rightIndex] {
      orderedArray.append(right[rightIndex])
      rightIndex += 1
    } else {
      orderedArray.append(left[leftIndex])
      leftIndex += 1
      orderedArray.append(right[rightIndex])
      rightIndex += 1
    }
  }
  
  /// Either the left or right pile has no more elements to compare
  while leftIndex < left.count {
    orderedArray.append(left[leftIndex])
    leftIndex += 1
  }
  
  while rightIndex < right.count {
    orderedArray.append(right[rightIndex])
    rightIndex += 1
  }
  
  return orderedArray
}

func mergeSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }
  
  /// recursively split the array
  let middleIndex = array.count / 2
  
  let leftArray = mergeSort(Array(array[0..<middleIndex]))
  
  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
  
  return merge(left: leftArray, right: rightArray)
}

var str = [5, 10, 35, 3, 1, 44]

mergeSort(str)
