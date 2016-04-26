//
//  About.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation
import UIKit

class About : UIViewController {
    
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        self.textView.scrollRangeToVisible(NSMakeRange(0, 10))
   
    }
    
    
}