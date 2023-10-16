//
//  ViewController.swift
//  TableViewSimpleCell
//
//  Created by Lingfang He on 2023-10-16.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialize()
    }
   
    func initialize()
    {
        TaskProvider.generateMockData()
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
    }
}

