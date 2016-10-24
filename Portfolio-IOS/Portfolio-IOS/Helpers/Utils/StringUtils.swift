//
//  StringUtils.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

struct StringUtils{
    
    // MARK: - check if string is empty
    static func isStringEmpty(_ obj: String?) -> Bool{
        if let obj = obj{
            let value:String = obj.removeWhitespace();
            if value.characters.count > 0 {
                return false
            }
        }
        return true;
    }
    
    static func heightForLabel(_ text :String, font : UIFont, width : CGFloat) -> CGFloat {
        
        let label : UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        return label.frame.height
        
    }
}
