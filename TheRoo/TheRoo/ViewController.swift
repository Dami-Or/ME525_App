//
//  ViewController.swift
//  TheRoo
//
//  Created by Dami Or on 4/18/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Label: UILabel!
    //@IBOutlet var OpenButton: UIBarButtonItem!
    @IBOutlet var SidebarButton: UIBarButtonItem!
    
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if (varView == 0){
            Label.text = "Strings"
            
        }
        else {
            Label.text = "Others"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

