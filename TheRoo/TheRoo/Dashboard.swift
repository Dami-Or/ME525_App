//
//  Dashboard.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation
import UIKit

class Dashboard : UIViewController {
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
    
    
    //Text Labels
    
    @IBOutlet weak var pulseLabel: UITextField!
    
    @IBOutlet weak var oxLabel: UITextField!
    
    @IBOutlet weak var sleepLabel: UITextField!
    
    @IBOutlet weak var tempLabel: UITextField!
    
    @IBOutlet weak var noiseLabel: UITextField!
    
    @IBOutlet weak var battLabel: UITextField!
    
    
    
    
    var pulseLabelText = String()
    var oxLabelText = String()
    var sleepLabelText = String()
    var tempLabelText = String()
    var noiseLabelText = String()
    var battLabelText = String()
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        
        
        pulseLabel.text = pulseLabelText
        oxLabel.text = oxLabelText
        sleepLabel.text = sleepLabelText
        tempLabel.text = tempLabelText
        noiseLabel.text = noiseLabelText
        battLabel.text = battLabelText
        
        
        
        
        UIDevice.currentDevice().batteryMonitoringEnabled = true
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    func batteryLevel() -> Float {
        
        return UIDevice.currentDevice().batteryLevel
    }
    
}