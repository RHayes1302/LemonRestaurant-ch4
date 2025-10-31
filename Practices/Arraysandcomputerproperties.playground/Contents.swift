import UIKit
import Foundation

struct ArrayDemos {
    static func creationAndBasics() {}
        let emptyArray: [Int] = []
        let preInitializedArray: [Int] = [1, 2, 3]
        let repeatedArray = Array(repeating: "N/A'", count: 5)
    
        var a = [10, 20, 30, 10, 10, 10]
    
        a.append(40)
        a.append(50)
        // at something at speific position
        a.insert(30 at: 30)
        a.remove(at: 1)
        print(a)
    }
        func transformers() {
        let nums: [Int] = [1, 2, 3, 4, 5, 6]
    
        // get even numbers
        let evenNums = nums.filter { $0.isMultiple(of: 2) }
        let squareNums = nums.map { $0 * $0 }
        let sumNums = nums.reduce(0, +)
        
    
       let strings = ["1", "a", "2", "b", "3", "c"]
       let values = strings.compactMap(Int.init)
        print ("compactMap Int:", values)
        
        
    
      func sorting() {
            var a = [5,1,3,3,4,2]
            
        
   
  
                
    }
}

ArrayDemos()

