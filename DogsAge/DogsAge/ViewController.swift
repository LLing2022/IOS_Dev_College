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

    @IBAction func txtAgeEditingChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    
    @IBAction func btnCheckitOutTouchUpInside(_ sender: Any) {
        //Just for test
        //print(" Tapped! ")
        /*
         1.get the value from txtAge
         2.make sure is a number
         3.validate the number  0 < num <= 20
         4.calculate ( txtAge * 7)
         5.show the result using lblResult
         ? mean can be null
         */
        //if let notation
        if let age = Int(txtAge.text!){
            if(age > 0 && age <= 20){
                let humanAge = age * 7
                lblResult.text = "If yout \(age) dog were a human, he/she would have \(humanAge) years old"
                lblResult.isHidden = false
                
            }else{
                Toast.ok(view: self, title: "Ooops!", message: "Please enter an age between 1 to 20.")
            }
        }else{
            Toast.ok(view: self, title: "Ooops!", message: "Enter a valid Number!") 
        }
        
        
    }
    
    
    
}

