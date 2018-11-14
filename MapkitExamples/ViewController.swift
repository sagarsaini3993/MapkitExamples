//
//  ViewController.swift
//  MapkitExamples
//
//  Created by MacStudent on 2018-11-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let x = CLLocationCoordinate2DMake(43.6532, -79.3832)
        
        let y = MKCoordinateSpanMake(0.01, 0.01)
        
        let z = MKCoordinateRegionMake(x, y)
        
        self.mapView.setRegion(z, animated: true)
        mapView.delegate = self

        
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
        
        // Example 3: Add a line to the map
        // ----------------------------------------
        
        // 1. Create the coordinates for your line
        
        // 2. Put these coordinates in an array
        
        //3. Create MKPolyline object
        
        // CN Tower
        let pos1 = CLLocationCoordinate2DMake(43.6426, -79.3871)
        
        // Lambton college
        let pos2 = CLLocationCoordinate2DMake(43.773738, -79.335531)
        
        var locations = [pos1, pos2]
        
        let polyline = MKPolyline(coordinates: &locations, count: locations.count)
        
        mapView.add(polyline)
        
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if(overlay is MKPolyline) {
            let r = MKPolylineRenderer(overlay: overlay)
            r.strokeColor = UIColor.red
            r.lineWidth = 4
            return r
        }
        return MKOverlayRenderer()
    }

    //MARK:- BUtton actions
    
    @IBAction func btnPlusPressed(_ sender: UIButton) {
        print("Plus button pressed")
        var r = mapView.region
        r.span.latitudeDelta = r.span.latitudeDelta / 2
        r.span.longitudeDelta = r.span.longitudeDelta / 2
        
        self.mapView.setRegion(r, animated: true)
    }
    
    @IBAction func btnMinusPressed(_ sender: UIButton) {
        print("Minus button pressed")
        var r = mapView.region
        r.span.latitudeDelta = r.span.latitudeDelta * 2
        r.span.longitudeDelta = r.span.longitudeDelta * 2
        
        self.mapView.setRegion(r, animated: true)
    }
    
    
}

