//
//  main.swift
//  Picking numbers
//
//  Created by Deepal Patel on 05/11/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

import Foundation

//let _ = readLine()!

//let array = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }

let array = [4, 6, 5, 3, 3, 1]

let set = NSCountedSet(array: array)

var totalNo = 0


for item in set {
    
    let nextValue = (item as! Int) + 1
    let currentValue = item as! Int
    
    var result = 0
    
    if set.contains(nextValue) {
        result = set.count(for: nextValue) + set.count(for: currentValue)
    }
    else {
        result = set.count(for: currentValue)
    }
    totalNo = (totalNo > result) ? totalNo : result
}

print(totalNo)
