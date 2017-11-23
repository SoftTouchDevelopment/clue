
//
//  game.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-17.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import Foundation

class game {
    
    // MARK: properties
    var suspects = [suspect]()
    var players = Set<String>()
    var user : String = ""
    var suspectsCards : [String : String] = [:]
    var roomCards : [String : String] = [:]
    var weaponCards : [String : String] = [:]
    
    // MARK: init
    init () {
        generateSuspects()
        generateCards()
    }
    
    // MARK: private functions
    func generateSuspects() {
        suspects += [suspect(type: suspect_type.col_mustard), suspect(type: suspect_type.prof_plum), suspect(type: suspect_type.mr_green), suspect(type: suspect_type.mrs_peacock), suspect(type: suspect_type.miss_scarlet), suspect(type: suspect_type.mrs_white)]
    }
    
    func generateCards () {
        suspectsCards = [
            "mustard" : "",
            "plum" : "",
            "green" : "",
            "peacock" : "",
            "scarlet" : "",
            "white" : ""
        ]
        roomCards = [
            "hall" : "",
            "lounge" : "",
            "dinning room" : "",
            "ballroom" : "",
            "conservatory" : "",
            "billiard room" : "",
            "library" : "",
            "study" : ""
        ]
        weaponCards = [
            "knife" : "",
            "candlestick" : "",
            "revolver" : "",
            "rope" : "",
            "lead pipe" : "",
            "wrench" : ""
        ]
    }
    
    // MARK: public functions
    
    func setPlayersName (type : suspect_type, name : String) {
        if(name.isEmpty) {
            return
        }
        for suspect in suspects {
            if (suspect.type == type) {
                suspect.setPlayer(player: name);
            }
        }
        players.insert(name)
    }
    
    func setUser(_ color : String) {
        for suspect in suspects {
            if (suspect.type == colorDict[color]) {
                suspect.isUser = true
                user = suspect.getPlayer()
            }
        }
    }
    
    func printInfo() {
        for suspect in suspects {
            if suspect.isUser == true {
                suspect.printInfo ()
            }
        }
    }
    
    func setHandCards(suspects: Set<String>, weapons: Set<String>, rooms : Set<String>) {
        for suspect in suspects {
            setPlayersSuspect(suspect : suspect, player : user)
        }
        for weapon in weapons {
            setPlayersWeapon(weapon: weapon, player: user)
        }
        for room in rooms {
            setPlayersRoom(room : room, player : user)
        }
    }
    
    func setPlayersWeapon (weapon : String, player : String) {
        weaponCards[weapon] = player
    }
    
    func setPlayersRoom (room : String, player : String) {
        roomCards[room] = player
    }
    
    func setPlayersSuspect (suspect : String, player : String) {
        suspectsCards[suspect] = player
    }
    
}
