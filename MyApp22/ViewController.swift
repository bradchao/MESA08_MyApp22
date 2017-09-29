//
//  ViewController.swift
//  MyApp22
//
//  Created by user22 on 2017/9/29.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 產生中心點
        let center = CLLocation(latitude: 24.150736, longitude: 120.651590)
        centerLocation(location: center, mapView: mapView)
        
        // 插針
        let ann = [MKPointAnnotation(),MKPointAnnotation()]
        ann[0].coordinate = CLLocationCoordinate2DMake(24.151137, 120.650593)
        ann[0].title = "aaa"
        ann[1].coordinate = CLLocationCoordinate2DMake(23.990525, 121.606916)
        ann[1].title = "bbb"

        mapView.addAnnotations(ann)
        
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        print("got it")
        
//        if annotation is MKUserLocation {
//            print("A")
//            return nil
//        }
        
//        var annView = mapView.dequeueReusableAnnotationView(withIdentifier: "Pin") as? MKPinAnnotationView
        var annView = mapView.dequeueReusableAnnotationView(withIdentifier: "Pin")

        // 第一次進來一定 nil
        if annView == nil {
            print("B")
//            annView = MKPointAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
            annView = MKAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
        }
        
//        if annotation.title! == "aaa" {
//            print("C")
//            annView?.pinTintColor = UIColor.yellow
//        }
//
//        if annotation.title! == "bbb" {
//            print("D")
//            annView?.pinTintColor = UIColor.green
//        }
        
        annView?.image = UIImage(named: "images")
        //annView?.canShowCallout = true
        
        return annView
    }
    
    
    // 定位及縮放
    private func centerLocation(location: CLLocation, mapView:MKMapView) {
        let dis:CLLocationDistance = 2*1000 // 以公尺計
        let cooordRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, dis,  dis)
        mapView.setRegion(cooordRegion, animated: true)
    }
    
    

}
