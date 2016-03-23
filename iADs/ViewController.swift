//
//  ViewController.swift
//  iADs
//
//  Created by Bryan Fein on 3/14/16.
//  Copyright © 2016 Bryan Fein. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {

    @IBOutlet var adBanner: ADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adBanner.hidden = true
        adBanner.delegate = self
        self.canDisplayBannerAds = true
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        
        NSLog("Error!")
        
        
    }
 
    func bannerViewWillLoadAd(banner: ADBannerView!) {
        
        
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        
        
        return true
        
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        banner.hidden = false
        
    }

}

