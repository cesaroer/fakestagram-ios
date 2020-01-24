//
//  Location.swift
//  Fakestagram-Xcode10
//
//  Created by Cesar Vargas D4 on 10/25/19.
//  Copyright © 2019 unam. All rights reserved.
//
//
//import Foundation
//import UIKit
//import CoreLocation
//
//class Location {
//
//    let locationManager = CLLocationManager()
//    var currentLocation:location
//    
//  
//    
//    func enableBasicLocationServices() {
//        locationManager.delegate = self as? CLLocationManagerDelegate
//        
//    
//        switch CLLocationManager.authorizationStatus() {
//        case .notDetermined:
//            locationManager.requestWhenInUseAuthorization()
//        case .restricted, .denied:
//            print("Disable location features")
//        case .authorizedWhenInUse, .authorizedAlways:
//            print("Enable location features")
//        @unknown default:
//            fatalError()
//        }
//    }
//    
//    func startLocationServices(){
//        
//        locationManager.startUpdatingLocation()
//        locationManager.requestLocation()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//
//        
//    }
//    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        
//        locationManager.delegate = self as? CLLocationManagerDelegate
//        
//        guard let location = locations.first else { return }
//        currentLocation.longitud = location.coordinate.longitude
//        currentLocation.latitude = location.coordinate.latitude
//        currentLocation.altitude = location.altitude
//        
//        
//    }
//    
//
//    
//
//    
//    
//}
//
//struct location {
//    var latitude: Double?
//    var longitud: Double?
//    var altitude: Double?
//}

