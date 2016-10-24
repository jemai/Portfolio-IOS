//
//  MenuCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    // MARK: - Variables and outlets
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var holder: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.white
    }
    // MARK: - Initializer
    func initCell(menuModel : MenuModel){
        self.titleLabel.text = menuModel.title
        self.mainImage.image = UIImage(named: menuModel.imageName)
    }

}
