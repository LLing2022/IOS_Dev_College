//
//  ViewController.swift
//  DogsAge
//
//  Created by Lingfang He on 2023-09-18.
//

import UIKit

class ViewController: UIViewController {

    /*
     Properties/Attributes
     >>Static methods
     Overide methods
     methods/ functions
     
     */
    //IB = Interface Builder, ! means not nil/null/none
    @IBOutlet weak var txtAge: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.isHidden = true
    }

    @IBAction func btnCheckitOutTouchUpInside(_ sender: Any) {
        print(" Tapped! ")
    }
    
    
}

