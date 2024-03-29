//
//  MonAnnotationView.swift
//  Les Calanques
//
//  Created by Graphic Influence on 21/06/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit
import MapKit

class MonAnnotationView: MKAnnotationView {

    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        setupAnnotation()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAnnotation()
    }
    func setupAnnotation() {
        image = #imageLiteral(resourceName: "placeholder")
        canShowCallout = true
        
        leftCalloutAccessoryView = setupLeft()
        rightCalloutAccessoryView = setupRight()
        detailCalloutAccessoryView = setupCenter()
    }
    
    func setupLeft() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setImage(#imageLiteral(resourceName: "distance"), for: .normal)
        button.addTarget(self, action: #selector(gps), for: .touchUpInside)
        return button
    }
    
    func setupRight() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setImage(UIImage(named: "detail"), for: .normal)
        button.addTarget(self, action: #selector(detail), for: .touchUpInside)
        return button
    }
    @objc func detail() {
        
    }
    
    @objc func gps() {
        
    }
    
    func setupCenter() -> UIView? {
        guard let anno = annotation as? MonAnnotation else { return nil }
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 125, height: 125))
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 125).isActive = true
        view.heightAnchor.constraint(equalToConstant: 125).isActive = true
        
        let imageView = UIImageView(frame: view.bounds)
        imageView.image = anno.calanque.image
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        return view
    }
    
}
