//
//  playersViewController.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-17.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import UIKit

class playersViewController: UIViewController {
    
    // MARK: properties
    
    @IBOutlet weak var mustardButton: UIButton!
    @IBOutlet weak var mustardTextfield: UITextField!
    @IBOutlet weak var plumButton: UIButton!
    @IBOutlet weak var plumTextfield: UITextField!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var greenTextfield: UITextField!
    @IBOutlet weak var peacockButton: UIButton!
    @IBOutlet weak var peacockTextfield: UITextField!
    @IBOutlet weak var scarletButton: UIButton!
    @IBOutlet weak var scarletTextfield: UITextField!
    @IBOutlet weak var whiteButton: UIButton!
    @IBOutlet weak var whiteTextfield: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    var selectedButton : String = ""
    var buttonDict: [ String : UIButton ] = [:]
    var nameDict: [ UIButton : String ] = [:]
    //var clue : game
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        buttonDict = [
            "mustard" : mustardButton,
            "plum" : plumButton,
            "green" : greenButton,
            "peacock" : peacockButton,
            "scarlet" : scarletButton,
            "white" : whiteButton
        ]
        nameDict = [
            mustardButton: "mustard",
            plumButton: "plum",
            greenButton : "green",
            peacockButton : "peacock",
            scarletButton : "scarlet",
            whiteButton : "white"
        ]
        //clue = game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: actions
    @IBAction func clickPlayerButton(_ sender: UIButton) {
        let buttonName = nameDict[sender]!
        print("click button by name: \(buttonName)")
        if (selectedButton != "") {
            setUnselectImg(button: buttonDict[selectedButton]!)
            if(selectedButton == buttonName) { //clicked the selected button
                selectedButton = ""
            } else { // selected another button
                selectedButton = buttonName
                setSelectedImg(button: sender)
            }
        } else { // selected a button
            selectedButton = buttonName
            setSelectedImg(button : sender)
        }
        print("selected button is \(selectedButton)")
        nextButton.isEnabled = (selectedButton != "")
    }
    
    @IBAction func clickNextButton(_ sender: UIButton) {
        //set players name
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: private functions
    func setSelectedImg (button : UIButton) {
        let imgName = "\(nameDict[button]!)-selected.png"
        button.setImage(UIImage(named: imgName), for: UIControlState.normal)
    }
    
    func setUnselectImg (button : UIButton) {
        let imgName = "\(nameDict[button]!).png"
        button.setImage(UIImage(named: imgName), for: UIControlState.normal)
    }


}
