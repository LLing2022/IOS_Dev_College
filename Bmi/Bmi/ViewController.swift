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
        if let height = Double(txtHeight.text!){
            if(height >= 80 && height <= 250){
                if let weight = Double(txtWeight.text!){
                    if(weight >= 30 && weight <= 300){
                        
                        var Height = height/100
                        var bmi = weight/(Height * Height)
                        bmi = round( bmi * 10 )/10
                        var classcification = "";

                        if bmi < 18.5{
                            classcification = "Underweight"
                            lblResult.text = " BMI Classcification = \(classcification) "
                            lblResult.backgroundColor = UIColor.blue
                            lblResult.isHidden = false
                        }else if bmi <= 24.9{
                            classcification = "Normal weight"
                            lblResult.text = " BMI Classcification = \(classcification) "
                            lblResult.backgroundColor = UIColor.green
                            lblResult.isHidden = false
                        }else if  bmi <= 29.9{
                            classcification = "Overweight"
                            lblResult.text = " BMI Classcification = \(classcification) "
                            lblResult.backgroundColor = UIColor.yellow
                            lblResult.isHidden = false
                        }else if bmi <= 100{
                            classcification = "Obesity"
                            lblResult.text = " BMI Classcification = \(classcification) "
                            lblResult.backgroundColor = UIColor.orange
                            lblResult.isHidden = false
                        }
                        
                    }else{
                        Toast.ok(view: self, title: "Bad Info!!!", message: "Please enter a valid weight!")
                    }
                }
                
            }else{
                Toast.ok(view: self, title: "Bad Info!!!", message: "Please enter a valid height!")
            }
        }
        
        
    }
    
}

