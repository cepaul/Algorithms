import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var map: [Int: Int] = [:]
  var result: [Int] = []
  
  for (i, v) in nums.enumerated() {
    /// find complement of target
    let complement = target - v
    print(complement)
    if let match = map[complement] {
      /// found a match
      /// return match and current index as result array
      result.append(match)
      result.append(i)
      return result
    }
    /// no match - add value/index to map
    map[v] = i
  }
  
  return result
}


var nums = [3,3]
var target = 6

twoSum(nums, target)
