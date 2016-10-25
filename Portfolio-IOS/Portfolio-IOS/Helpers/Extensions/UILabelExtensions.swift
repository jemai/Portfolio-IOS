//
//  UILabelExtensions.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 29/09/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
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
}



