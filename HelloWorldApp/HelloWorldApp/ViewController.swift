//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Parth Rai Sharma on 5/27/19.
//  Copyright © 2019 Parth Rai Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    
    @IBOutlet weak var resultlbl: UILabel!
    @IBOutlet weak var secondNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClick(_ sender: Any) {
       // print("Hello World")
        
        let first = Double(firstNumber.text!)
        let second = Double(secondNumber.text!)
        
        let result = first! + second!
        
        resultlbl.text = String(result)	
        
        
    
    }
    
}

