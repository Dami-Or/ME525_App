//
//  Settings.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation
import UIKit

class Settings : UITableViewController {
    
    
    //Switches
    @IBOutlet weak var pulseSwitch: UISwitch!
    @IBOutlet weak var oxySwitch: UISwitch!
    @IBOutlet weak var sleepSwitch: UISwitch!
    @IBOutlet weak var tempSwitch: UISwitch!
    @IBOutlet weak var noiseSwitch: UISwitch!
    @IBOutlet weak var batterySwitch: UISwitch!
    
    
   //Sliders
    @IBOutlet weak var pulseSlide: UISlider!
    
    @IBOutlet weak var oxySlider: UISlider!
    
    @IBOutlet weak var tempSlider: UISlider!
    
    @IBOutlet weak var batterySlider: UISlider!
    
    
    //segment controls
    @IBOutlet weak var sleepSegment: UISegmentedControl!
    
    @IBOutlet weak var noiseSegment: UISegmentedControl!
    
    
    //Labels
    
    @IBOutlet weak var pulseLabel: UILabel!
    
    @IBOutlet weak var oxLabel: UILabel!
    
    @IBOutlet weak var sleepLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var noiseLabel: UILabel!
    
    @IBOutlet weak var batLabel: UILabel!
    
    
    //Slider Actions
    
    @IBAction func pulseSlideChange(sender: UISlider) {
        
        var selectedValue1 = Float(sender.value)
        
        pulseLabel.text = String(stringInterpolationSegment: selectedValue1)
        
    }
    
    
    @IBAction func oxSlideChange(sender: UISlider) {
        
        var selectedValue2 = Float(sender.value)
        
        oxLabel.text = String(stringInterpolationSegment: selectedValue2)
    }
    
    
    @IBAction func tempSlideChange(sender: UISlider) {
        
        var selectedValue3 = Float(sender.value)
        
        tempLabel.text = String(stringInterpolationSegment: selectedValue3)
    }
    
    
    
    @IBAction func battSlideChange(sender: UISlider) {
        
        var selectedValue4 = Float(sender.value)
        
        batLabel.text = String(stringInterpolationSegment: selectedValue4)
    }
    
    
    
    //Segment Actions
    @IBAction func sleepSegChange(sender: UISegmentedControl) {
        
        if sleepSegment.selectedSegmentIndex == 0 {
            sleepLabel.text = "Back"
        }
        if sleepSegment.selectedSegmentIndex == 1 {
            sleepLabel.text = "Stomach"
        }
    }
    
    @IBAction func NoiseSegChange(sender: UISegmentedControl) {
        
        if noiseSegment.selectedSegmentIndex == 0 {
            noiseLabel.text = "Sleep"
        }
        
        if noiseSegment.selectedSegmentIndex == 1 {
            noiseLabel.text = "Awake"
        }
    }
    
    
    
    
    var selectedCellIndexPath: NSIndexPath?
    
    let selectedCellHeight: CGFloat = 80.0
    let unselectedCellHeight: CGFloat = 44.0
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if selectedCellIndexPath == indexPath {
            return selectedCellHeight
        }
        return unselectedCellHeight
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if selectedCellIndexPath != nil && selectedCellIndexPath == indexPath {
            selectedCellIndexPath = nil
        } else {
            selectedCellIndexPath = indexPath
        }
        
        tableView.beginUpdates()
        tableView.endUpdates()
        
        if selectedCellIndexPath != nil {
            // This ensures, that the cell is fully visible once expanded
            tableView.scrollToRowAtIndexPath(indexPath, atScrollPosition: .None, animated: true)
        }
    }
    
    
    
    
    @IBOutlet weak var SidebarButton: UIBarButtonItem!
     override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        SidebarButton.target = self.revealViewController()
        SidebarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        //TableArray = ["Pulse Rate","Oxygen Level","Sleeping Position","Temperature","Noise Activity","Battery Percentage"]
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let DestViewController : Dashboard = segue.destinationViewController as! Dashboard
//        
//        DestViewController.pulseLabelText = pulseLabel.text!
//        DestViewController.oxLabelText = oxLabel.text!
//        DestViewController.sleepLabelText = sleepLabel.text!
//        DestViewController.tempLabelText = tempLabel.text!
//        DestViewController.noiseLabelText = noiseLabel.text!
//        DestViewController.battLabelText = batLabel.text!
//        
//        
//        
//        
//        
//                
//        
//        
//        
//        
//        
//        }
    
    
    
}