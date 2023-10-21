//
//  ViewController.swift
//  TableViewSimpleCell
//
//  Created by Lingfang He on 2023-10-16.
//

import UIKit
// the first after : is inherantance, after that are all protocols
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SecondViewControllerDelegate {
 
    //default is public
   
    private   var selectedRow : Int?
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialize()
    }
   
    func initialize()
    {
        //TaskProvider.generateMockData() // 100 tasks
//        for task in TaskProvider.all{
//            print(task)
//        }
        
        // Last stpe: conncet the content to my viewController
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    // section -> group of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskProvider.all.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = TaskProvider.all[indexPath.row]
        content.secondaryText = "This is the secondary Text"
        content.image = UIImage(systemName: "square")
        
        cell.contentConfiguration = content
        
        // ****just show a page of data, only fetch if the user need it "dequeue"******
        //print(TaskProvider.all[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // index of base from 0
        print("\(indexPath.row + 1) selected ! \(TaskProvider.all[indexPath.row])")
        
        selectedRow = indexPath.row
        
        //When the user click a check box, we trigger a Segue(qiehuan)
        performSegue(withIdentifier: Segue.toSecondViewController, sender: self)
        
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == Segue.toSecondViewController{//update/ delete mode
            
            (segue.destination as! SecondViewController).selectedRow = selectedRow
//            (segue.destination as! SecondViewController).delegate = self
        }
        // all operation need refresh
        (segue.destination as! SecondViewController).delegate = self
    }
    
    // this is from SecondViewControllerDelegate
    func refreshTable() {
        
        tableView.reloadData()
        
    }
    
    
}

