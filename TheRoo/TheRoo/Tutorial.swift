//
//  Tutorial.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class Tutorial : UIViewController {
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
    
    var playViewController = AVPlayerViewController()
    var playView = AVPlayer()
    
    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        let otherURL = NSURL(fileURLWithPath: "/Users/damiOr/Desktop/XCode/TheRoo/TheRoo/VID_20160420_211406503.mp4")
        playView = AVPlayer(URL: otherURL)
        playViewController.player = playView
    }
    
    
    @IBAction func playButtonClick(sender: AnyObject) {
        
        self.presentViewController(playViewController , animated: true){
            self.playViewController.player?.play()
        }
    }
    
    
}