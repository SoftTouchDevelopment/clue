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
        versionLabel.text = getVersionstr()
        generateSuspects()
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
    
    func generateSuspects() {
        var suspects = [suspect]()
        suspects += [suspect(type: suspect_type.col_mustard), suspect(type: suspect_type.prof_plum), suspect(type: suspect_type.mr_green), suspect(type: suspect_type.mrs_peacock), suspect(type: suspect_type.miss_scarlet), suspect(type: suspect_type.mrs_white)]
        
    }

}

