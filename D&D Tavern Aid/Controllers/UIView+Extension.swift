//
//  UIView+Extension.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 23/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradient(topGradientColor: UIColor, bottomGradientColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [topGradientColor.cgColor, bottomGradientColor.cgColor]
        gradientLayer.borderColor = layer.borderColor
        gradientLayer.borderWidth = layer.borderWidth
        gradientLayer.cornerRadius = layer.cornerRadius
        layer.insertSublayer(gradientLayer, at: 0)
    }
}


