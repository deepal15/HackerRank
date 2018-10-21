//
//  main.swift
//  Birthday cake candles
//
//  Created by Deepal Patel on 21/10/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

import Foundation

import Foundation

// let count1 = readLine()!

// let array = readLine()!.components(separatedBy: " ").compactMap({ Int($0)! })

// print(array.filter({ $0 == array.max()!}).count)


// Get input
_ = Int(readLine()!)! // irrelavent
let candleHeights = readLine()!.components(separatedBy: " ").compactMap{ Int($0)! }

// Get max height
let maxHeight: Int = candleHeights.max()!

var counter = 0
for height in candleHeights {
    if maxHeight == height {
        counter += 1
    }
}

print(counter)

