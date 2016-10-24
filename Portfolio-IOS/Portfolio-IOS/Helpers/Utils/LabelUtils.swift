//
//  LabelUtils.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 30/09/16.
//  Copyright © 2016 Digit-U. All rights reserved.
//


import Foundation
import UIKit

struct LabelUtils{
    
    /*
     *  LabelUtils
     */
    
    static func initLabelLineBreakMode(_ label : UILabel ,lineNumber : Int) {
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = lineNumber
    }
    
    
}

