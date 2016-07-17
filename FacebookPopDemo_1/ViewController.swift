//
//  ViewController.swift
//  FacebookPopDemo_1
//
//  Created by Mr.Lee on 16/6/15.
//  Copyright © 2016年 Mr.Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
//        testView = UIView(frame: CGRectMake(0, 0, 100, 100))
//        testView!.center = self.view.center
//        testView?.backgroundColor = UIColor.redColor()
//    
//        self.view.addSubview(testView!)
//        
//        let anim = POPSpringAnimation(propertyNamed: "spring")
//        
//        anim.velocity = 1000
//        anim.fromValue = 0.0
//        anim.toValue = 1.0
//        anim.springBounciness = 10
//        self.testView?.layer.pop_addAnimation(anim, forKey: "spring")
        
        let redBall = UIView(frame: CGRectMake(100, 100, 100, 100))
        redBall.backgroundColor = UIColor.redColor()
        redBall.layer.cornerRadius = 50
        self.view.addSubview(redBall)
        
        let scale = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
        scale.toValue = NSValue(CGPoint: CGPointMake(2, 2))
        scale.springBounciness = 20
        scale.springSpeed = 1
        redBall.pop_addAnimation(scale, forKey: "Mr_Lee")
        
        let move = POPSpringAnimation(propertyNamed: kPOPLayerPositionX)
        move.toValue = 300
        move.springBounciness = 20
        move.springSpeed = 5
        redBall.layer.pop_addAnimation(move, forKey: "Mr_Leee")
        
        let spin = POPSpringAnimation(propertyNamed: kPOPLayerRotation)
        spin.toValue = M_PI * 4
        spin.springBounciness = 20
        spin.springSpeed = 5
        redBall.layer.pop_addAnimation(spin, forKey: "spin")
        
        let color = POPSpringAnimation(propertyNamed: kPOPViewBackgroundColor)
        color.toValue = UIColor.greenColor()
        color.springBounciness = 20
        color.springSpeed = 5
        redBall.pop_addAnimation(color, forKey: "color")
        
        
        let btn = LYButton(type: UIButtonType.Custom)
        btn.frame = CGRectMake(150, 300, 50, 50)
        btn.backgroundColor = UIColor.orangeColor()
        btn.addTarget(nil, action: nil, forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
    }
    
    

}
