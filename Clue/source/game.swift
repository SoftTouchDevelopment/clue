
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
    
    // MARK: init
    init () {
        generateSuspects()
    }
    
    // MARK: private functions
    func generateSuspects() {
        suspects += [suspect(type: suspect_type.col_mustard), suspect(type: suspect_type.prof_plum), suspect(type: suspect_type.mr_green), suspect(type: suspect_type.mrs_peacock), suspect(type: suspect_type.miss_scarlet), suspect(type: suspect_type.mrs_white)]
        
    }
    
}
