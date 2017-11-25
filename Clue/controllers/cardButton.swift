//
//  cardButton.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-24.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import UIKit

class cardButton: UIButton {
    
    var _name : String = ""
    var _index : Int = -1
    var _isSelected : Bool = false
    
    // MARK: public method
    func setName (_ name:String) {
        _name = name
    }
    
    func getName() -> String {
        return _name
    }
    
    func setIndex (_ index:Int) {
        _index = index
    }
    
    func getIndex() -> Int {
        return _index
    }
    
    func isSelected () -> Bool {
        return _isSelected
    }
    
    func click() {
        _isSelected = !_isSelected
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
