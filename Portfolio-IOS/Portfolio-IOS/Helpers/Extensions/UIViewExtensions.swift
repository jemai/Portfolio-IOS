//
//  UIViewExtensions.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 8/25/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit


// MARK: - Centring and binding a view to its super view
extension UIView {
    
    /// Adds constraints to this `UIView` instances `superview` object to make sure this always has the same size as the superview.
    /// Please note that this has no effect if its `superview` is `nil` – add this `UIView` instance as a subview before calling this.
    func bindFrameToSuperviewBounds() {
        guard let superview = self.superview else {
            print("Error! `superview` was nil – call `addSubview(view: UIView)` before calling `bindFrameToSuperviewBounds()` to fix this.")
            return
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": self]))
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": self]))
    }
    func initWithShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 3
    }
}

// MARK: - AnimationExtentions
extension UIView {
    func showViewAnimated(){
        self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.isHidden = false
        
        UIView.animate(withDuration: 0.4){
            self.transform = CGAffineTransform.identity
        }
    }
    
    //hide view animated
    func hideViewAnimated(){
        //
        UIView.animate(withDuration: 0.4 ,
                                   animations: {
                                    self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            },
                                   completion: { finish in
                                    self.transform = CGAffineTransform.identity
                                    self.isHidden = true
        })
        
    }
}
