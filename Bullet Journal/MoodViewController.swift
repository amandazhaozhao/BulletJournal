//
//  MoodViewController.swift
//  Bullet Journal
//
//  Created by Amanda Zhao on 4/30/18.
//  Copyright © 2018 Zhao. All rights reserved.
//

import UIKit

class MoodViewController: UIViewController {
    
    @IBOutlet weak var happyBullet: UIImageView!
    @IBOutlet weak var sadBullet: UIImageView!
    @IBOutlet weak var excitedBullet: UIImageView!
    @IBOutlet weak var anxiousBullet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var date = ""
    var mood = ""
    var thankfulFor = ["", ""]
    var goodMemory = ""
    var toDos = ["", ""]
    var toDoItems = ["", ""]
    
    @IBAction func unwindFromThankfulViewController(segue:UIStoryboardSegue) {
        
    }
    
    
    func animateHappyButton() {
        let bounds = self.happyBullet.bounds
        let shrinkValue: CGFloat = 60
        self.happyBullet.bounds = CGRect(x: self.happyBullet.bounds.origin.x + shrinkValue, y: self.happyBullet.bounds.origin.y + shrinkValue, width: self.happyBullet.bounds.size.width - shrinkValue, height: self.happyBullet.bounds.size.height - shrinkValue)

        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 5, options: [], animations: { self.happyBullet.bounds = bounds }, completion: nil)
    }

    func animateSadButton() {
        let bounds = self.sadBullet.bounds
        let shrinkValue: CGFloat = 60
        self.sadBullet.bounds = CGRect(x: self.sadBullet.bounds.origin.x + shrinkValue, y: self.sadBullet.bounds.origin.y + shrinkValue, width: self.sadBullet.bounds.size.width - shrinkValue, height: self.sadBullet.bounds.size.height - shrinkValue)

        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 5, options: [], animations: { self.sadBullet.bounds = bounds }, completion: nil)
    }

    func animateExcitedButton() {
        let bounds = self.excitedBullet.bounds
        let shrinkValue: CGFloat = 60
        self.excitedBullet.bounds = CGRect(x: self.excitedBullet.bounds.origin.x + shrinkValue, y: self.excitedBullet.bounds.origin.y + shrinkValue, width: self.excitedBullet.bounds.size.width - shrinkValue, height: self.excitedBullet.bounds.size.height - shrinkValue)

        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 5, options: [], animations: { self.excitedBullet.bounds = bounds }, completion: nil)
    }

    func animateAnxiousButton() {
        let bounds = self.anxiousBullet.bounds
        let shrinkValue: CGFloat = 60
        self.anxiousBullet.bounds = CGRect(x: self.anxiousBullet.bounds.origin.x + shrinkValue, y: self.anxiousBullet.bounds.origin.y + shrinkValue, width: self.anxiousBullet.bounds.size.width - shrinkValue, height: self.anxiousBullet.bounds.size.height - shrinkValue)

        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 5, options: [], animations: { self.anxiousBullet.bounds = bounds }, completion: nil)
    }

    @IBAction func happyPressed(_ sender: UITapGestureRecognizer) {
        mood = "Happy"
        animateHappyButton()
    }
    @IBAction func sadPressed(_ sender: UITapGestureRecognizer) {
        mood = "Sad"
        animateSadButton()
    }

    @IBAction func excitedPressed(_ sender: UITapGestureRecognizer) {
        mood = "Excited"
        animateExcitedButton()
    }

    @IBAction func anxiousPressed(_ sender: UITapGestureRecognizer) {
        mood = "Anxious"
        animateAnxiousButton()
    }

    

}
