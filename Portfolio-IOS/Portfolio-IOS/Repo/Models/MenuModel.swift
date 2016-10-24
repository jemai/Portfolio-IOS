//
//  menuModel.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import Foundation

struct MenuModel {
    
    // MARK: - Init
    init(title : String , image : String){
        self.title = title
        self.imageName = image
    }
    
    // MARK: - Variables
    var title = ""
    var imageName = ""
}
