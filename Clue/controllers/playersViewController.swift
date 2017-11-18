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
    var buttonDict: [ String : UIButton] = [:]
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonDict   = [
            "mustard" : mustardButton,
            "plum" : plumButton,
            "green" : greenButton,
            "peacock" : peacockButton,
            "scarlet" : scarletButton,
            "white" : whiteButton
        ]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: actions
    
    @IBAction func clickMustardButton(_ sender: UIButton) {
        setButton(clickedbutton : sender, buttonName: "mustard")
    }
    
    @IBAction func clickPlumButton(_ sender: UIButton) {
        setButton(clickedbutton : sender, buttonName: "plum")
    }
    
    @IBAction func clickGreenButton(_ sender: UIButton) {
        setButton(clickedbutton : sender, buttonName: "green")
    }
    
    @IBAction func clickPeacockButton(_ sender: UIButton) {
        setButton(clickedbutton : sender, buttonName: "peacock")
    }
    
    @IBAction func clickScarletButton(_ sender: UIButton) {
        setButton(clickedbutton : sender, buttonName: "scarlet")
    }
    
    @IBAction func clickWhiteButton(_ sender: UIButton) {
        setButton(clickedbutton : sender, buttonName: "white")
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
    func setSelectedImg (button : UIButton, name : String) {
        let imgName = "\(name)-selected.png"
        button.setImage(UIImage(named: imgName), for: UIControlState.normal)
    }
    
    func setUnselectImg (button : UIButton, name : String) {
        let imgName = "\(name).png"
        button.setImage(UIImage(named: imgName), for: UIControlState.normal)
    }
    
    func getButtonByName (name : String) -> UIButton {
        return buttonDict[name]!
    }
    
    func setButton(clickedbutton : UIButton, buttonName : String) {
        if (selectedButton != "") {
            setUnselectImg(button: getButtonByName(name : selectedButton), name : selectedButton)
            if(selectedButton == buttonName) { //clicked the selected button
                selectedButton = ""
            } else { // selected another button
                selectedButton = buttonName
                setSelectedImg(button: clickedbutton, name: buttonName)
            }
        } else { // selected a button
            selectedButton = buttonName
            setSelectedImg(button : clickedbutton, name: buttonName)
        }
        
        //TO-DO: next button disable/enable
    }

}
