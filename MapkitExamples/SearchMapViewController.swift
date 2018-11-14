//
//  SearchMapViewController.swift
//  MapkitExamples
//
//  Created by MacStudent on 2018-11-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class SearchMapViewController: UIViewController {

    @IBOutlet weak var textFieldSearchBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSearchMapPressed(_ sender: UIButton) {
        print("Search button pressed")
        
        //1. Get the keyword from the UI
        
        //2. Send the keyword to Apple
        
        //3. Wait for the Apple results
        
        //4. Do something with the results
        
        let keyword = textFieldSearchBox.text!
        
        let searchRequest = MKLocalSearchRequest()
        searchRequest.naturalLanguageQuery = keyword
        
        let coordinate = CLLocationCoordinate2DMake(43.6532, -79.3832)
        let span = MKCoordinateSpanMake(0.1, 0.1)
        let r = MKCoordinateRegionMake(coordinate, span)
        
        searchRequest.region = r
        let search = MKLocalSearch(request: searchRequest)
        search.start { (response, error) in
            print(error?.localizedDescription as Any)
            
            print(response?.mapItems as Any)
            
            let places = response?.mapItems
            
            for x in places! {
                print("Name : \(String(describing: x.name))")
                print("Address : \(String(describing: x.phoneNumber))")
                print("Lat : \(x.placemark.coordinate.latitude)")
                print("Long : \(x.placemark.coordinate.longitude)")
            }
        }
    
    }
    
}
