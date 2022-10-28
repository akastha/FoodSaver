//
//  BackGroundView.swift
//  FoodSaver
//
//  Created by Prashamsa on 02/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//

import UIKit

@IBDesignable
class BackGroundView: UIView {

    @IBInspectable var topColor: UIColor = UIColor(named: "BGTopColor") ?? .clear {
        didSet {
            updateView()
        }
    }
    @IBInspectable var bottomColor: UIColor = UIColor(named: "BGBottomColor") ?? .clear {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
       get {
          return CAGradientLayer.self
       }
    }
}

fileprivate extension BackGroundView {
    func updateView() {
      let layer = self.layer as! CAGradientLayer
      layer.colors = [topColor, bottomColor].map{$0.cgColor}
    }
}
