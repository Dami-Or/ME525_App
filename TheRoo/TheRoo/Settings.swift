//
//  Settings.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation

class Settings : UITableViewController {
    
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
     override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        //TableArray = ["Pulse Rate","Oxygen Level","Sleeping Position","Temperature","Noise Activity","Battery Percentage"]
    }
}