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

        
        
        
    }

}

