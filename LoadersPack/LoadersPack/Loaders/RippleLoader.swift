//
//  RippleLoader.swift
//  LoadersPack
//
//  Created by Suneet on 1/3/18.
//  Copyright © 2018 Suneet. All rights reserved.
//

import Foundation

public class RippleLoader : UIView {
    
    @IBInspectable
    public var fromAlpha: CGFloat = 0.9;
    
    @IBInspectable
    public var toAlpha: CGFloat = 0.1;
    
    private var circleView : CircleView?
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        circleView = CircleView.init(frame: frame)
        initView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        circleView = CircleView.init(coder: aDecoder)!
        initView()
    }
    
    fileprivate func initView(){
        circleView?.circleColor = UIColor.red
        addSubview(circleView!)
//        UIView.animate(withDuration: 1000,
//                       animations: {
//                        circleView?.sca
//        })
    }
    
    
    
}
