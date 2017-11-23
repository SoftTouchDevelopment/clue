//
//  suspects.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-14.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import Foundation
enum suspect_type {
    case
    col_mustard,
    prof_plum,
    mr_green,
    mrs_peacock,
    miss_scarlet,
    mrs_white
}

let suspectDict: [suspect_type: String]  = [
    suspect_type.col_mustard: "Col. Mustard",
    suspect_type.prof_plum: "Prof. Plum",
    suspect_type.mr_green: "Mr Green",
    suspect_type.mrs_peacock: "Mrs Peacock",
    suspect_type.miss_scarlet: "Miss Scarlet",
    suspect_type.mrs_white: "Mrs White",
]

let colorDict: [String: suspect_type]  = [
    "mustard" : suspect_type.col_mustard,
    "plum" : suspect_type.prof_plum,
    "green" : suspect_type.mr_green,
    "peacock" : suspect_type.mrs_peacock,
    "scarlet" : suspect_type.miss_scarlet,
    "white" : suspect_type.mrs_white
]

class suspect {
    var type : suspect_type;
    var name : String = ""
    var player : String = ""
    var isUser : Bool = false
    
    init(type: suspect_type, player: String) {
        self.type = type
        self.name = suspectDict[type] ?? "unknown type"
        self.player = player
    }
    
    init(type: suspect_type) {
        self.type = type
        let name = suspectDict[type]  ?? "unknown type"
        print(name)
        self.name = suspectDict[type] ?? "unknown type"
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getPlayer() -> String {
        return self.player
    }
    
    func setPlayer(player:String) {
        self.player = player;
    }
    
    func printInfo () {
        print("type: \(name) playerName: \(player)")
    }
}



