//
//  Vitals.swift
//  TheRoo
//
//  Created by Dami Or on 4/21/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation
import UIKit

class Vitals : UIViewController {
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    
}