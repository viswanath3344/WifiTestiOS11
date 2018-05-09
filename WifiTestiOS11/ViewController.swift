//
//  ViewController.swift
//  WifiTestiOS11
//
//  Created by jacob Liu on 1/17/18.
//  Copyright © 2018 8locations. All rights reserved.
//

import UIKit
import NetworkExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testWifiConnection()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func testWifiConnection()  {
        
        
        //  Here Give required wifi SSID name , password of that.
        
        let configuration = NEHotspotConfiguration.init(ssid: "viswanath", passphrase: "bujji1996", isWEP: false)
        configuration.joinOnce = true
        
        NEHotspotConfigurationManager.shared.apply(configuration) { (error) in
            if error != nil {
                if error?.localizedDescription == "already associated."
                {
                    print(" Already Connected")
                }
                else{
                    print("No Connected")
                }
            }
            else {
                print("Connected")
            }
        }
    }

    
}

