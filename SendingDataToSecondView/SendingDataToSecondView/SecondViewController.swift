//
//  SecondViewController.swift
//  SendingDataToSecondView
//
//  Created by Lingfang He on 2023-09-27.
//

import UIKit

class SecondViewController: UIViewController {
    
    var receivedMessage : String? // optional string == nil

    @IBOutlet weak var lblMessage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // the reason why the "receivedMessage" is without !, because the .text is String? (optional) we send optional to optional
        lblMessage.text = receivedMessage
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
