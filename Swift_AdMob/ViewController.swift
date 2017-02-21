//
//  ViewController.swift
//  Swift_AdMob
//
//  Created by Yasuaki K on 2017/02/21.
//  Copyright © 2017年 Yasuaki Kitaoka. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController ,GADBannerViewDelegate{
    
    
    @IBOutlet weak var bannerView: GADBannerView!
    let request = GADRequest()
    
    var inter:GADInterstitial!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        request.testDevices = [kGADSimulatorID]
        bannerView.delegate = self
        bannerView.adUnitID = "ca-app-pub-1973574128490282/7735447659"
        bannerView.rootViewController = self
        bannerView.load(request)
        
        inter = GADInterstitial(adUnitID: "ca-app-pub-1973574128490282/9212180853")
        inter.load(request)
        
    }

    @IBAction func showInter(_ sender: Any) {
        
        inter.present(fromRootViewController: self)
        request.testDevices = [kGADSimulatorID]
        inter = GADInterstitial(adUnitID: "ca-app-pub-1973574128490282/9212180853")
        inter.load(request)

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

