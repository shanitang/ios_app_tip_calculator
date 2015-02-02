//
//  SettingsViewController.swift
//  tips
//
//  Created by Yeu-Shuan Tang on 2/1/15.
//  Copyright (c) 2015 Yeu-Shuan Tang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipController: UISegmentedControl!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipController.selectedSegmentIndex = defaults.integerForKey("defaultPercentages")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setPercentage(sender: AnyObject) {
        
        var index = tipController.selectedSegmentIndex
        defaults.setInteger(index, forKey: "defaultPercentages")
        defaults.synchronize()

    }

    @IBAction func backToMainView(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
