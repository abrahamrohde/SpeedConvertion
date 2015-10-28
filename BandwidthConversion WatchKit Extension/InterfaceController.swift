//
//  InterfaceController.swift
//  BandwidthConversion WatchKit Extension
//
//  Created by Abraham Rohde on 10/28/15.
//  Copyright © 2015 Abraham Rohde. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    
    @IBOutlet var thePicker: WKInterfacePicker!
    var currSelectedIndex = 0

    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        var thePickerItems = [WKPickerItem]()
        
        for(var i = 0; i < 1000; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i].title = "\(i+1)"
            thePickerItems[i].caption = "\(i+1)"
            //print(thePickerItems[i].title)
        }
        
        self.thePicker.setItems(thePickerItems)
        
    }
    
    @IBAction func nextPagePressed()
    {
        self.presentControllerWithName("screen2", context: self.currSelectedIndex)
    }
    @IBAction func pickerWasClicked(value: Int)
    {
        self.currSelectedIndex = value+1
        print(self.currSelectedIndex)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
