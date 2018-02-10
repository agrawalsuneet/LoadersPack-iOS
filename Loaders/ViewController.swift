//
//  ViewController.swift
//  Loaders
//
//  Created by Suneet on 1/3/18.
//  Copyright © 2018 Suneet. All rights reserved.
//

import UIKit
import LoadersPack

class ViewController: UIViewController {
    
    @IBOutlet weak var exampleCircleView: CircleView!
    
    var width : CGFloat = 0.0;
    var height : CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //exampleCircleView.center.x -= view.bounds.width
        width = exampleCircleView.frame.size.width
        height = exampleCircleView.frame.size.height
        
        //exampleCircleView.frame.size.width = 0
        //exampleCircleView.frame.size.height = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        UIView.animate(withDuration: 2, animations: {
//            //self.exampleCircleView.center.x += self.view.bounds.width
//            self.exampleCircleView.frame.size.width = self.width
//            self.exampleCircleView.frame.size.height = self.height
//            })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

