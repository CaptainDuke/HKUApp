//
//  MapViewController.swift
//  HKUApp
//
//  Created by 麦小明 on 2018/11/7.
//  Copyright © 2018年 Captwang. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

var location = CLLocationCoordinate2DMake(22.283687,114.1327153)


class MapViewController: UIViewController {
    
    @IBOutlet weak var Map: MKMapView!
    @IBAction func btnLocate(_ sender: Any){
        var span = MKCoordinateSpan(latitudeDelta: 0.02,longitudeDelta: 0.02) //MKCoordinateSpanMake has been replace by MKCoordinateSpan
        var region = MKCoordinateRegion(center: location, span: span)
        Map.setRegion(region, animated: true)
        
        print("kkk")
    }
    @IBAction func kk(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "HKU CS Department"
        annotation.subtitle = "salkdjfjlksdfa"
        Map.addAnnotation(annotation)
        
        
        // Do any additional setup after loading the view.
        
        //        annotation.coordinate(location)
        
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
