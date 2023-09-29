//
//  ViewController.swift
//  SendingDataToSecondView
//
//  Created by Lingfang He on 2023-09-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMessage: UITextField!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtMessage.backgroundColor = UIColor.yellow
    }

    
    @IBAction func txtMessageEditingChanged(_ sender: Any) {
        if(txtMessage.text!.isEmpty){
            txtMessage.backgroundColor = UIColor.yellow
        }else{
            txtMessage.backgroundColor = .white
        }
        
    }
    
    // should i stay and should i go :)
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (identifier == Segue.toSecondViewController) {
            return !txtMessage.text!.isEmpty
        }else{
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Segue.toSecondViewController{
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.receivedMessage = txtMessage.text
            
        }
    }
    
}

