//
//  main.swift
//  Sock Merchant
//
//  Created by Deepal Patel on 21/10/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

//

import Foundation

let count = Int(readLine()!)!

let array = readLine()!.components(separatedBy: " ").compactMap{ Int($0) }

var modified = [Int : Int]()

array.forEach {
    
    if let value = modified[$0] {
        modified[$0] = value + 1
    }
    
    if modified[$0] == nil {
        modified[$0] = 1
    }
}


var total = 0

modified.forEach {
    total += $0.value / 2
}
print(total)


