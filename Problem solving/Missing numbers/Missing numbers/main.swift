//
//  main.swift
//  Missing numbers
//
//  Created by Deepal Patel on 21/10/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

import Foundation

//let _ = readLine()!
//let a = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }
//let _ = readLine()!
//let b = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }

let a = [11, 4, 11, 7, 13, 4, 12, 11, 10, 14]
let b = [11, 4, 11, 7, 3, 7, 10, 13, 4, 8, 12, 11, 10, 14, 12, 15]


//let a = [1, 2, 3, 2, 3, 5]
//let b = [1, 2, 4]
var result = Set<Int>()

let set1 = NSCountedSet(array: a)
let set2 = NSCountedSet(array: b)

set2.forEach {
    
    if set1.count(for: $0) != set2.count(for: $0) {
        result.insert($0 as! Int)
    }
}

let finalResult = result.sorted().compactMap { String($0) }.joined(separator: " ")
print(finalResult)









