//
//  backTableViewController.swift
//  TheRoo
//
//  Created by Dami Or on 4/18/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation

class backTableViewController: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["The 'Roo","Login","Dashboard","Settings","Tutorial","About"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
       // cell.textLabel?.text = TableArray[indexPath.row]
        
        return cell
    }
   
}





