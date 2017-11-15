//
//  playersTableViewCell.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-14.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import UIKit

class playersTableViewCell: UITableViewCell {

     //MARK: Properties
    
    @IBOutlet weak var playerNameTextField: UITextField!
    @IBOutlet weak var characterPicker: UIPickerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
