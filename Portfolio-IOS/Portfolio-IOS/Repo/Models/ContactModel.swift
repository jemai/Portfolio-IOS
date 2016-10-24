//
//  ContactModel.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import Foundation
struct ContactModel {
    
    // MARK: - Init
    init( image : String ,link : String){
        self.imageName = image
        self.link = link
    }
    
    // MARK: - Variables
    var imageName = ""
    var link = ""
}
