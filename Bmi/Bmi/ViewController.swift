//
//  ViewController.swift
//  Bmi
//
//  Created by Lingfang He on 2023-09-20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.isHidden = true
    }
    
    @IBAction func txtHeightEditingChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    @IBAction func txtWeightEditingChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    @IBAction func btnCalculateTouchUPInside(_ sender: Any) {
        /*
         1.get the value from txtbox
         2.make sure is a number
         3.validate the number
         4.calculate
         5.show the result using lblResult
         ? means can be null
         */
        // gard let notation
        
        guard let height = Double(txtHeight.text!) else {
            Toast.ok(view: self, title: "Bad Info!!!", message: "Please enter a Number!")
            return
        }
        guard let weight = Double(txtWeight.text!) else {
            Toast.ok(view: self, title: "Bad Info!!!", message: "Please enter a Number!")
            return
        }
        if(height >= 80 && height <= 250){
            if(weight >= 30 && weight <= 300){
                let Height = height/100
                var bmi = weight/(Height * Height)
                bmi = round( bmi * 10 )/10
                
                switch(bmi){
                case 0..<18.5:
                lblResult.text = " BMI Classcification = Underweight "
                lblResult.backgroundColor = UIColor.blue
                    lblResult.isHidden = false
                break;
                case 18.5..<25.0:
                lblResult.text = " BMI Classcification = Normal weight "
                lblResult.backgroundColor = UIColor.green
                    lblResult.isHidden = false
                break;
                case 25.0..<30.0:
                lblResult.text = " BMI Classcification = Overweight "
                lblResult.backgroundColor = UIColor.yellow
                    lblResult.isHidden = false
                break;
                case 25.0...100.0:
                lblResult.text = " BMI Classcification = Obesity "
                lblResult.backgroundColor = UIColor.orange
                    lblResult.isHidden = false
                break;
                    
                default:
                Toast.ok(view: self, title: "Ooooops!!!", message: "Out of range!")
                    
                }
                
                }else{
                    Toast.ok(view: self, title: "Bad Info!!!", message: "Please enter a valid weight!")
                }
            }else{
                Toast.ok(view: self, title: "Bad Info!!!", message: "Please enter a valid height!")
            }
        
    }
}
