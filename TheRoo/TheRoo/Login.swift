//
//  Login.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation
import UIKit

class Login : UIViewController {
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Message: UILabel!
    
    
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }

    @IBAction func SubmitButton(sender: AnyObject) {
        
        let user = "Dami"
        let paswd = "me525"
        
        if (UserName.text == user && Password.text == paswd) {
            
            Message.text = "Success, Welcome!"
            UserName.resignFirstResponder()
            Password.resignFirstResponder()
            performSegueWithIdentifier("SuccessfulLogin", sender: sender)
            //self.view.window?.rootViewController = RFDuino()
            
            
            
        }
        else {
            
            Message.text = "Incorrect Username or Password"
            UserName.resignFirstResponder()
            Password.resignFirstResponder()
        }
    }


}
 