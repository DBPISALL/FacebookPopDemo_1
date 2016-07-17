//
//  LYButton.swift
//  FacebookPopDemo_1
//
//  Created by Mr.Lee on 16/6/15.
//  Copyright © 2016年 Mr.Lee. All rights reserved.
//

import UIKit

class LYButton: UIButton {

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        
        // 缩放动画
        var scale = self.pop_animationForKey("scale") as? POPSpringAnimation
        if scale != nil {
            scale?.toValue = NSValue(CGPoint: CGPointMake(0.8, 0.8))
        } else {
            scale?.toValue = NSValue(CGPoint: CGPointMake(0.8, 0.8))
            scale = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
            scale?.springBounciness = 20
            scale?.springSpeed = 18
            self.pop_addAnimation(scale, forKey: "scale")
        }
        
        // 旋转动画 （层动画）
        var rotate = self.layer.pop_animationForKey("rotate") as? POPSpringAnimation
        if rotate != nil {
            rotate?.toValue = M_PI / 6
        } else {
            rotate = POPSpringAnimation(propertyNamed: kPOPLayerRotation)
            rotate?.toValue = M_PI / 6
            rotate?.springBounciness = 20
            rotate?.springSpeed = 18
            self.layer.pop_addAnimation(rotate, forKey: "rotate")
        }
        
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        // 缩放动画
        var scale = self.pop_animationForKey("scale") as? POPSpringAnimation
        if scale != nil {
            scale?.toValue = NSValue(CGPoint: CGPointMake(1, 1))
        } else {
            scale = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
            scale?.springBounciness = 20
            scale?.springSpeed = 18
            self.pop_addAnimation(scale, forKey: "scale")
        }
        
        // 旋转动画 （层动画）
        var rotate = self.layer.pop_animationForKey("rotate") as? POPSpringAnimation
        if rotate != nil {
            rotate?.toValue = 0
        } else {
            rotate = POPSpringAnimation(propertyNamed: kPOPLayerRotation)
            rotate?.toValue = M_PI / 6
            rotate?.springBounciness = 20
            rotate?.springSpeed = 18
            self.layer.pop_addAnimation(rotate, forKey: "rotate")
        }
    }

}
