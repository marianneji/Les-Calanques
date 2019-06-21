//
//  MonAnnotation.swift
//  Les Calanques
//
//  Created by Graphic Influence on 21/06/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit
import MapKit

class MonAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var calanque: Calanque
    var title: String?
    
    init(_ calanque: Calanque) {
        
        self.calanque = calanque
        coordinate = self.calanque.coordonnee
        title = self.calanque.nom
    }
}
