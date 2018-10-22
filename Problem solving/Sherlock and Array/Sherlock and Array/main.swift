//
//  main.swift
//  Sherlock and Array
//
//  Created by Deepal Patel on 22/10/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

import Foundation

let count = readLine()!

func sherlockNArray(array: [Int]) -> Swift.String {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    var sum = 0
    
    while (leftIndex != rightIndex) {
        
        if (sum >= 0) {
            
            sum -= array[rightIndex]
            rightIndex -= 1
        }
        else {
            
            sum += array[leftIndex]
            leftIndex += 1
        }
    }
    return sum == 0 ? "YES" : "NO"
}

func acceptParam() {
    
    let _ = readLine()!
    let array1 = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }
    print(sherlockNArray(array: array1))
}

let max = Int(count)!

for _ in 0..<max {
    
    acceptParam()
}


