//
//  roomsView.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-24.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import UIKit

class roomsView: UIView {
    var _selectedRooms : Set<String> = []
    
    // MARK: public
    func getSelectedRooms() -> Set<String> {
        return _selectedRooms
    }

    // MARK: actions
    @IBAction func selectRoom(_ sender: cardButton) {
        sender.click()
        if (sender.isSelected()) {
            _selectedRooms.insert(sender.getName())
        } else {
            _selectedRooms.remove(sender.getName())
        }
    }
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    // MARK:

}
