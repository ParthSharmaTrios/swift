//
//  ViewController.swift
//  ImgUpload
//
//  Created by Parth Rai Sharma on 6/5/19.
//  Copyright © 2019 Parth Rai Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgPlaceholder: UIImageView!
    
    var imgPicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgPicker.delegate = self
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnClick(_ sender: Any) {
        
        imgPicker.sourceType = .photoLibrary
        imgPicker.allowsEditing = true
        
        
        present(imgPicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if (info[UIImagePickerController.InfoKey.originalImage] as? UIImage != nil){
        
            let userSelection = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        imgPlaceholder.image = userSelection
        
        dismiss(animated: true, completion: nil)
        }
    }
    
}



