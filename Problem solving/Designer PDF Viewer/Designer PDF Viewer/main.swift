//
//  main.swift
//  Designer PDF Viewer
//
//  Created by Deepal Patel on 22/10/18.
//  Copyright © 2018 Deepal Patel. All rights reserved.
//

import Foundation

let array = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
let word = "zaba"


//let heights = readLine()!.components(separatedBy: " ").compactMap { Int($0)! }
//let word = readLine()!

let scalarValuesOfWord = word.unicodeScalars.compactMap { Int($0.value)}
let scalarValueOfA = Int(UnicodeScalar("a")!.value)
let scalarValuesOfGivenWord = scalarValuesOfWord.compactMap { $0 - scalarValueOfA }
let mapToIndexForHeightValue = scalarValuesOfGivenWord.compactMap { array[$0] }
let heightOfMaxChar = mapToIndexForHeightValue.max()!
let result = heightOfMaxChar * word.count
print(result)
