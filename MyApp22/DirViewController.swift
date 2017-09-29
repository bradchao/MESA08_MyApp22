//
//  DirViewController.swift
//  MyApp22
//
//  Created by user22 on 2017/9/29.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit
import MapKit

class DirViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let start = CLLocationCoordinate2D(latitude: 23.990637, longitude: 121.606818)
        let end = CLLocationCoordinate2D(latitude: 24.131473, longitude: 120.673139)
        
        let start2 = MKPlacemark(coordinate: start)
        let end2 = MKPlacemark(coordinate: end)
        
        let item1 = MKMapItem(placemark: start2)
        let item2 = MKMapItem(placemark: end2)
        
        let ps = [item1, item2]
        let mode = [MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving]
        
        MKMapItem.openMaps(with: ps, launchOptions: mode)
        
        
        
        
        
    }

}
