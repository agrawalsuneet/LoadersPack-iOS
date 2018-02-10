//
//  CircleView.swift
//  LoadersPack
//
//  Created by Suneet on 1/3/18.
//  Copyright © 2018 Suneet. All rights reserved.
//

import UIKit

@IBDesignable
public class CircleView : UIView {
    
    private let shapeLayer = CAShapeLayer()
    
    @IBInspectable
    public var circleColor : UIColor = UIColor.gray  {
        didSet {
            shapeLayer.fillColor = circleColor.cgColor
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayer()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayer()
    }
    
    fileprivate func setupLayer() {
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let minLength = min(bounds.width, bounds.height)
        let circlePath = UIBezierPath(arcCenter: center, radius: minLength / 2, startAngle: 0, endAngle: CGFloat(Float(360).degreesToRadians), clockwise: true)
        
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = circleColor.cgColor
        
        layer.addSublayer(shapeLayer)
    }
}

extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}
