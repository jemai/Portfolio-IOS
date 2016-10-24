//
//  UILabelExtensions.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 29/09/16.
//  Copyright © 2016 Digit-u. All rights reserved.
//

import UIKit


// MARK: - height of Label from text
extension UILabel {
    func heightWithWidth(_ width: CGFloat) -> CGFloat {
        guard let text = text else {
            return 0
        }
        return text.heightWithWidth(width, font: font)
    }
    //
    func heightWithAttributedWidth(_ width: CGFloat) -> CGFloat {
        guard let attributedText = attributedText else {
            return 0
        }
        return attributedText.heightWithWidth(width)
    }
    //
    func setStyle(_ style : LabelStyle){
        self.textColor =  style.textColor
        //self.shadowOffset = CGSizeMake(0.0, 1.0)
        self.font = style.font
    }
    //
    func setAccessibility(_ access : LabelAccessabilitie){
        if let textToSet = LanguageManager.sharedManager.getStringForKey(key: access.textKey){
            self.text = textToSet
        }
        self.setStyle(access.style)
    }
}



