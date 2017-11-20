//
//  randomDictionary.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-19.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import Foundation


class randomDictionary {
    static func generate(items: [String]) -> (getName: Dictionary<Int, String>, getIndex: Dictionary<String, Int>) {
        let size = items.count
        var getName : Dictionary<Int, String> = [:]
        var getIndex : Dictionary<String, Int>  = [:]
        for value in items[0..<size] {
            var rand = arc4random_uniform(UInt32(size))
            while getName.index(forKey: Int(rand)) == nil {
                rand = arc4random_uniform(UInt32(size))
            }
            getName [Int(rand)] = value
            getIndex[value] = Int(rand)
        }
        return (getName, getIndex)
    }

}

