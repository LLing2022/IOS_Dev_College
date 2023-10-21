//
//  SecondViewController.swift
//  TableViewSimpleCell
//
//  Created by Lingfang He on 2023-10-18.
//

import UIKit

protocol SecondViewControllerDelegate{
    func refreshTable()
}

class SecondViewController: UIViewController {
    
    public var delegate : SecondViewControllerDelegate?
    
    public var selectedRow : Int?

    @IBOutlet weak var txtDescription: UITextField!
    @IBOutlet weak var btnDelete: UIButton!

    /*
     dont mess code, make all attributes up
     and put all action(functions) down
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        if(selectedRow != nil){  //this is update/delete mode
            txtDescription.text = TaskProvider.all[selectedRow!]
        }else{
            btnDelete.isHidden = true
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnSaveTouchUpinside(_ sender: Any) {
        // if is not empty, check ! in swift
        if(!txtDescription.text!.isEmpty){
            
            if(selectedRow != nil){ // delete/update mode
                TaskProvider.all[selectedRow!] = txtDescription.text!
            }else{ //insert mode
                TaskProvider.all.append(txtDescription.text!)
            }
           
            
            if delegate != nil {
                delegate!.refreshTable()
            }
            // if we have navagation controller we can not do dismiss
            //self.dismiss(animated: true)
            navigationController!.popViewController(animated: true)

        }
    }
    
    @IBAction func btnDeleteTouchUpInside(_ sender: Any) {
        TaskProvider.all.remove(at: selectedRow!)
        
        if delegate != nil {
            delegate!.refreshTable()
        }
        
        //self.dismiss(animated: true)
        navigationController!.popViewController(animated: true)
        
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
