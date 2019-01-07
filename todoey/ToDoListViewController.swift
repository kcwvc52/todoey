//
//  ViewController.swift
//  todoey
//
//  Created by kyle wilson on 1/4/19.
//  Copyright © 2019 kyle wilson. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController{

    
    let itemArray = ["find mike", "buy eggos", "destroy demogorgons"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell=tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }

    //MARK - Tableview delegate methods
    
    //get the selection of tableview
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        // add check mark or assecory to current selected item in table view, click on the prototyoe cell in storyboard
      
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        
        
        
        //deselect tableview after click so it isn't highlighted
    tableView.deselectRow(at: indexPath, animated: true)
    }
}
