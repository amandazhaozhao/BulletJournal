//
//  ViewController.swift
//  Bullet Journal
//
//  Created by Amanda Zhao on 4/30/18.
//  Copyright © 2018 Zhao. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeUp)
        
    }
    
    @IBAction func mainPageSwipedUp(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "FirstTableViewController", sender: self)
    }

}


extension UIViewController {
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "nextPage", sender: self)
    }
}

