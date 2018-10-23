//
//  main.swift
//  Divisible sum pairs
//
//  Created by Deepal Patel on 23/10/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }

let n = input.first!
let k = input.last!

let array = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }

var count = 0

for i in 0..<array.count {
    
    for j in i..<array.count {
        
        if j < array.count - 1 {
            
            if (array[i] + array[j + 1]) % k == 0 {
                count += 1
            }
        }
    }
}
print(count)
