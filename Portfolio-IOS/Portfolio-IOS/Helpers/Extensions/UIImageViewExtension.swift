//
//  UIImageViewExtension.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 29/09/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit
import Foundation

extension UIImageView {
    public func imageFromUrl(_ urlString: String) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url as URL)
            let session = URLSession.shared
            let task = session.dataTask(with: request as URLRequest){ data, response, error in
                if let imageData = data as NSData? {
                    self.image = UIImage(data: imageData as Data)
                }
            }
            task.resume()
        }
    }
}

