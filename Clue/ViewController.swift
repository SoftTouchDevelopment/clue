//
//  ViewController.swift
//  Clue
//
//  Created by Micheal Montpetit on 2017-11-10.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
   
    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(getVersionstr())
        versionLabel.text = getVersionstr()
    }
    
    //MARK: Actions
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func getVersionstr() -> String{
        let version = (Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String)!
        let build = (Bundle.main.infoDictionary!["CFBundleVersion"] as? String)!
        return "version \(version).\(build)"
    }

}

