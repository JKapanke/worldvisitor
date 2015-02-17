//
//  ActivityViewController.swift
//  WorldTraveler
//
//  Created by Jason Kapanke on 12/13/14.
//  Copyright (c) 2014 Better Things. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController
{
    var incomingActivitySelected: AnyObject!
    @IBOutlet weak var selectedActivityLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var selectedActivity = incomingActivitySelected as Activity
        selectedActivityLabel.text = "You have selected to " + selectedActivity.getActivityName()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
