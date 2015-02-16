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
    @IBOutlet var worldMapSwipeRec: UISwipeGestureRecognizer!
    @IBOutlet weak var swipeView: UIView!
    let swipeRec = UISwipeGestureRecognizer()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var selectedActivity = incomingActivitySelected as Activity
        
        

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // prepare for seque
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        //the segue must be named as noted in the operator
        if (segue.identifier == "toSelectedActivitySegue")
        {
            //var cvc = segue.destinationViewController as ActivityViewController;
            //cvc.incomingCountryName = countryRolled
        }
    }



}
