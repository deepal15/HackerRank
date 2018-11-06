//
//  main.swift
//  Electronic Shop
//
//  Created by Deepal Patel on 06/11/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

import Foundation



//let keyboards = [40, 50, 60]
//let usbs = [5, 8, 12]
//let budget = 60

let budget = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }

let keyboards = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }
let usbs = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }

var max = 0

for key in keyboards {
    
    for usb in usbs {
        
        if usb + key <= budget[0] && max < usb + key {
            max = usb + key
        }
    }
}

print((max == 0) ? -1 : max)


