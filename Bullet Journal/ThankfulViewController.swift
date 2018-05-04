//
//  ThankfulViewController.swift
//  Bullet Journal
//
//  Created by Amanda Zhao on 4/30/18.
//  Copyright © 2018 Zhao. All rights reserved.
//

import UIKit

class ThankfulViewController: UIViewController {

    
    @IBOutlet weak var addPhoto: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func unwindFromSecondTableViewController(segue:UIStoryboardSegue) {
        
    }

    func animatePhotoPressed() {
        let bounds = self.addPhoto.bounds
        let shrinkValue: CGFloat = 60
        self.addPhoto.bounds = CGRect(x: self.addPhoto.bounds.origin.x + shrinkValue, y: self.addPhoto.bounds.origin.y + shrinkValue, width: self.addPhoto.bounds.size.width - shrinkValue, height: self.addPhoto.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 5, options: [], animations: { self.addPhoto.bounds = bounds }, completion: nil)
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func cameraLibraryAlert() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { _ in
            self.accessCamera()
        }
        let libraryAction = UIAlertAction(title: "Library", style: .default) { _ in
            self.accessLibrary()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cameraAction)
        alertController.addAction(libraryAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func accessLibrary() {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func accessCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
            present(imagePicker, animated: true, completion: nil)
        } else {
            
            showAlert(title: "Camera Not Available", message: "There is no camera available on this device.")
        }
    }
    
    @IBAction func addPhotoPressed(_ sender: UITapGestureRecognizer) {
        cameraLibraryAlert()
        animatePhotoPressed()
    }
    
   

}
