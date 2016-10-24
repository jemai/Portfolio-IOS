//
//  StringExtensions.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

extension String {

    //peek first char
    var first: String {
        return String(characters.prefix(1))
    }


    //peek last char
    var last: String {
        return String(characters.suffix(1))
    }

    //check if is email string
    func isEmail() -> Bool {
        let regex = try? NSRegularExpression(pattern: "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}$", options: .caseInsensitive)
        return regex?.firstMatch(in: self, options: [], range: NSMakeRange(0, self.characters.count)) != nil
    }


    //convert html to NSMutableAttributedString
    var htmlString:NSMutableAttributedString? {

        do{

            //
            let attributes = try NSMutableAttributedString(data: data(using: String.Encoding.isoLatin1, allowLossyConversion: true)!, options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType], documentAttributes: nil)

            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 0.25
            attributes.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, attributes.length))

            //
            return attributes

        }catch{
            debugPrint("Fail to convert string to html : \(error)")
        }

        return nil
    }

    //replace string
    func replace(_ string:String, replacement:String) -> String {
        return replacingOccurrences(of: string, with: replacement)
    }

    //remove white space
    func removeWhitespace() -> String {
        return self.replace(" ", replacement: "")
    }
 
    // MARK: - Height of text according ti frame width and text font
    func heightWithWidth(_ width: CGFloat, font: UIFont) -> CGFloat {

        let maxSize = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let actualSize = self.boundingRect(with: maxSize, options: [.usesLineFragmentOrigin], attributes: [NSFontAttributeName: font], context: nil)
        return actualSize.height
    }

    func widhWithHeight(_ height :CGFloat, font : UIFont) -> CGFloat {

        let maxSize = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
        let actualSize = self.boundingRect(with: maxSize, options: [.usesLineFragmentOrigin], attributes: [NSFontAttributeName: font], context: nil)
        return actualSize.width
    }

}

// MARK: - get height from NSAttributed String
extension NSAttributedString {
    func heightWithWidth(_ width: CGFloat) -> CGFloat {
        let maxSize = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let actualSize = boundingRect(with: maxSize, options: [.usesLineFragmentOrigin], context: nil)
        return actualSize.height
    }
}
