//
//  ProjectModel.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import Foundation
struct SharedModel {
    
    // MARK: - Init
    init(title : String , image : String ,description : String){
        self.title = title
        self.imageName = image
        self.description = description
    }
    
    // MARK: - Variables
    var title = ""
    var imageName = ""
    var description = ""
}
