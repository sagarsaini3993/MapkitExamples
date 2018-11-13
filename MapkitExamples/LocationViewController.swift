//
//  LocationViewController.swift
//  MapkitExamples
//
//  Created by MacStudent on 2018-11-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    
    var manager : CLLocationManager!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager = CLLocationManager()
        manager.delegate = self
        
        // How accurate do you want the position to be?
        manager.desiredAccuracy = kCLLocationAccuracyBest
        
        //Ask for permission
        manager.requestAlwaysAuthorization()
        
        //
        manager.startUpdatingLocation()

    }
    @IBAction func btnGetLocationPressed(_ sender: UIButton) {
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Got a new location")
        
        if locations.count == 0 {
            print("Error getting your location")
        } else {
            print(locations[0])
        }
    }
    

}
