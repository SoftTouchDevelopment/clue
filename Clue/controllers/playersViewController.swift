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
    
    var selectedButton : UIButton = nib
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: actions
    
    @IBAction func clickMustardButton(_ sender: UIButton) {
//        if (selectedButton != nib) {
//            setUnselectImg(selectButton)
//            if(selectedButton == mustardButton) {
//                selectButton = nib
//                
//            } else {
//                
//            }
//            selectButton = mustardButton
//            setSelectedImg(selectButton)
//        }
//        else if (selectedButton == mustardButton)
//        && selectedButton != mustardButton)
//        {
//            setUnselectImg(selectButton)
//        }
//        selectButton = mustardButton
//        
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
        
    }
    
    func setUnselectImg (button : UIButton) {
        
    }

}
