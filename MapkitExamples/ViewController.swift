//
//  ViewController.swift
//  MapkitExamples
//
//  Created by MacStudent on 2018-11-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let x = CLLocationCoordinate2DMake(43.6532, -79.3832)
        
        let y = MKCoordinateSpanMake(0.01, 0.01)
        
        let z = MKCoordinateRegionMake(x, y)
        
        self.mapView.setRegion(z, animated: true)

        
        // Example 2:
        
        // 1. Create a pin object
        
        let pin = MKPointAnnotation()
        
        //2. Set the lat long of pin
        
        pin.coordinate = x
        //3. OPTIONAL: add a information popup
        pin.title = "Here is some info"
        
        //4. Show the pin on the map
        self.mapView.addAnnotation(pin)
        
        
        // Adding another pin
        let pin2 = MKPointAnnotation()
        
        pin2.coordinate = CLLocationCoordinate2DMake(43.65644, -79.3807)
        self.mapView.addAnnotation(pin2)
        
    }

}

