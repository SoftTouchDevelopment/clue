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

let suspectDict: Dictionary = [
    suspect_type.col_mustard: "Col. Mustard",
    suspect_type.prof_plum: "Prof. Plum",
    suspect_type.mr_green: "Mr Green",
    suspect_type.mrs_peacock: "Mrs Peacock",
    suspect_type.miss_scarlet: "Miss Scarlet",
    suspect_type.mrs_white: "Mrs White",
]

class suspect {
    var type : suspect_type;
    var name : String = ""
    var player : String = ""
    
    init(type: suspect_type, player: String) {
        self.type = type
        self.name = suspectDict[type]!
        self.player = player
    }
    
    init(type: suspect_type) {
        self.type = type
        self.name = suspectDict[type]!
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
}



