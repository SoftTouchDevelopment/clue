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
    suspect_type.col_mustard: SUSPECT.COL_MUSTARD,
    suspect_type.prof_plum: SUSPECT.PROF_PLUM,
    suspect_type.mr_green: SUSPECT.MR_GREEN,
    suspect_type.mrs_peacock: SUSPECT.MRS_PEACOCK,
    suspect_type.miss_scarlet: SUSPECT.MISS_SCARLET,
    suspect_type.mrs_white: SUSPECT.MRS_WHITE,
]

let colorDict: [String: suspect_type]  = [
    COLOR.MUSTARD : suspect_type.col_mustard,
    COLOR.PLUM : suspect_type.prof_plum,
    COLOR.GREEN : suspect_type.mr_green,
    COLOR.PEACOCK : suspect_type.mrs_peacock,
    COLOR.SCARLET : suspect_type.miss_scarlet,
    COLOR.WHITE : suspect_type.mrs_white
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



