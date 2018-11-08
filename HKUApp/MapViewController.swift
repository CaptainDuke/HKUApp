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
import MessageUI

var g_location = CLLocationCoordinate2DMake(22.283687,114.1327153)


class MapViewController: BaseViewController,CLLocationManagerDelegate {
    
    @IBOutlet weak var Map: MKMapView!
    var locationMgr = CLLocationManager()
    
    @IBAction func PhoneCall(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://85288888888")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print("kkkkkk")
    }
    //btn function
    @IBAction func btnLocate(_ sender: Any){
        let span = MKCoordinateSpan(latitudeDelta: 0.02,longitudeDelta: 0.02) //MKCoordinateSpanMake has been replace by MKCoordinateSpan
        let region = MKCoordinateRegion(center: g_location, span: span)
        Map.setRegion(region, animated: true)
        
        print("kkk")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        
        Map.showsUserLocation = true
        if CLLocationManager.locationServicesEnabled() == true {
            if CLLocationManager.authorizationStatus() == .restricted || CLLocationManager.authorizationStatus() == .denied || CLLocationManager.authorizationStatus() == .notDetermined{
                locationMgr.requestWhenInUseAuthorization()
            }
            locationMgr.desiredAccuracy = 1.0
            locationMgr.delegate = self
            locationMgr.startUpdatingLocation()
        }
        else
        {
            print("please turn on location service")
        }

        var annotation = MKPointAnnotation()
        annotation.coordinate = g_location
        annotation.title = "HKU CS Department"
        annotation.subtitle = "salkdjfjlksdfa"
        Map.addAnnotation(annotation)
        
        
        // Do any additional setup after loading the view.
        
        //        annotation.coordinate(location)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2,longitudeDelta: 0.2)
        let locationUser = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        let region = MKCoordinateRegion(center: locationUser, span: span)
        self.Map.setRegion(region, animated: true)
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
