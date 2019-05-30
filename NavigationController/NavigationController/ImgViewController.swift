//
//  ImgViewController.swift
//  NavigationController
//
//  Created by Parth Rai Sharma on 5/30/19.
//  Copyright © 2019 Parth Rai Sharma. All rights reserved.
//

import UIKit

class ImgViewController: UIViewController {

    @IBOutlet weak var ImgPlaceholder: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeImg(_ sender: Any) {
        
       // ImgPlaceholder.image = UIImage(named: "dog")
        
        let inputImg = ImgPlaceholder.image!
        
        let rawImg = CIImage(image: inputImg)
        
        //let sepiaParams: [String : Any] = [kCIInputImageKey : rawImg  ]
        
        let  : [String : Any] = [kCIInputImageKey : rawImg, "inputSize" : CIVector(string:"[100 100]") , "inputCropAmount" : 1 , "inputCenterStretchAmount" : 1]
        
        
        let sepiaFilter = CIFilter(name: "CIStretchCrop", parameters: cropParams)
        
        let context = CIContext(options: nil)
        
        if let output = sepiaFilter?.outputImage{
            
            if let ciImg = context.createCGImage(output, from: output.extent){
                
                ImgPlaceholder.image = UIImage(cgImage: ciImg)
                
                
            }
        }

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
