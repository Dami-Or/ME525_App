//
//  RFDuino.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation
import UIKit

class RFDuino : UIViewController {
    
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
    //@IBOutlet weak var duinoButton: UIButton!
    @IBOutlet weak var duinoButton: UIBarButtonItem!
    
    
       override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        duinoButton.target = self.revealViewController()
        duinoButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        //self.performSegueWithIdentifier("SuccessfulLogin", sender: self)
        _ = self.storyboard?.instantiateViewControllerWithIdentifier("RFDuino") as? UIViewController!
        self.view.window?.rootViewController = RFDuino()
        
        
    }
    
    
    
    
    
    
    
   }