//
//  ViewController.swift
//  test
//
//  Created by MScZJN on 1/20/16.
//  Copyright © 2016 MScZJN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var dynamicAnimator = UIDynamicAnimator()
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        //添加重力行为
        let gravityBehavior = UIGravityBehavior(items: [self.imageView])
        dynamicAnimator.addBehavior(gravityBehavior)
        
        //添加碰撞行为
        let collisionBehavior = UICollisionBehavior(items: [self.imageView])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        dynamicAnimator.addBehavior(collisionBehavior)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

