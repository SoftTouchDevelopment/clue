//
//  selectCardsViewController.swift
//  Clue
//
//  Created by Yan Gao on 2017-11-18.
//  Copyright © 2017 Micheal Montpetit. All rights reserved.
//

import UIKit

class selectCardsViewController: UIViewController {
    // MARK: properties
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var weaponsView: UIView!
    @IBOutlet weak var roomsView: UIView!
    @IBOutlet weak var suspectsView: suspectsUIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weaponsView.isHidden = true
        roomsView.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: actions
    
    @IBAction func changeViews(_ sender: UISwipeGestureRecognizer) {
        let currentPage = pageControl.currentPage
        if (sender.direction == UISwipeGestureRecognizerDirection.left) {
             print("sender.direction is left")
            pageControl.currentPage = (currentPage == 2) ? currentPage : (currentPage + 1)
        }else if (sender.direction == UISwipeGestureRecognizerDirection.right) {
            print("sender.direction is right")
            pageControl.currentPage = (currentPage == 0) ? currentPage : (currentPage - 1)
        } 
        updateCurrentPage(index: pageControl.currentPage )
    }
    
    
    @IBAction func switchViews(_ sender: UIPageControl) {
        updateCurrentPage(index: sender.currentPage)
    }
    
    // MARK: private functions
    func updateCurrentPage ( index : Int) {
        if (index == 0) {
            suspectsView.isHidden = false
            weaponsView.isHidden = true
            roomsView.isHidden = true
        } else if (index == 1) {
            suspectsView.isHidden = true
            weaponsView.isHidden = false
            roomsView.isHidden = true;
        } else {
            suspectsView.isHidden = true
            weaponsView.isHidden = true
            roomsView.isHidden = false
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
