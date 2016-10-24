//
//  MainCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 23/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class MainCell: UICollectionViewCell {
    // MARK: - Outlets
    @IBOutlet weak var menuCollection: MenuCollection!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        menuCollection.initCollection()
    }
    
}

