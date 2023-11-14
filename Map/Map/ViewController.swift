//
//  ViewController.swift
//  Map
//
//  Created by SREEHARI MOHAN on 11/11/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Set Map delegate
        mapView.delegate = self
        
        //Add Annotation - MKPointAnnotation
        let annotation = MKPointAnnotation()
        annotation.title = "CIRM"
        annotation.subtitle = "CUSAT"

        annotation.coordinate = CLLocationCoordinate2D(latitude: 10.0443, longitude: 76.3282)
        mapView.addAnnotation(annotation)
        let circle = MKCircle(center: CLLocationCoordinate2D(latitude: 10.0443, longitude: 76.3282), radius: 800)
        mapView.addOverlay(circle)
    }
}

extension ViewController: MKMapViewDelegate {

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
      if overlay is MKCircle {
        let circleView = MKCircleRenderer(overlay: overlay)
        circleView.lineWidth = 1
        circleView.strokeColor = UIColor.blue
        circleView.fillColor = UIColor.blue.withAlphaComponent(0.3)
        return circleView
        
      } else if overlay is MKPolygon {
        let circleView = MKPolygonRenderer(overlay: overlay)
        circleView.lineWidth = 1
        circleView.strokeColor = UIColor.green
        circleView.fillColor = UIColor.green.withAlphaComponent(0.3)
        return circleView
      }
      return MKOverlayRenderer()
    }
}

