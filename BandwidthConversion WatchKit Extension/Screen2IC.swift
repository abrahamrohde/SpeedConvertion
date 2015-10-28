//
//  Screen2IC.swift
//  BandwidthConversion
//
//  Created by Abraham Rohde on 10/28/15.
//  Copyright © 2015 Abraham Rohde. All rights reserved.
//

import WatchKit
import Foundation


class Screen2IC: WKInterfaceController
{

    @IBOutlet var MbpsLabel: WKInterfaceLabel!
    @IBOutlet var theTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        let Mbps = context as! Double
        MbpsLabel.setText("\(Mbps)")
        // Configure interface objects here.
        
        self.theTable.setNumberOfRows(4, withRowType: "cell")
        /*
            I'm doing the following because i know there will only be 4 rows for this app. 
            Could be more rows I suppose if we wanted to later add terrabytes or something but right now i'm not
        */
        let row1 = self.theTable.rowControllerAtIndex(0) as! SpeedRow
        let row2 = self.theTable.rowControllerAtIndex(1) as! SpeedRow
        let row3 = self.theTable.rowControllerAtIndex(2) as! SpeedRow
        let row4 = self.theTable.rowControllerAtIndex(3) as! SpeedRow
        
        
        row1.speedLabel.setText("Bps: \(Mbps*1024*1024)")
        row2.speedLabel.setText("KBps: \(Mbps*1024/8)")
        row3.speedLabel.setText("MBps: \(Mbps/8)")
        row4.speedLabel.setText("GBps: \(Mbps/8/1024)")

        //print("\(context as! Double)")
        
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
