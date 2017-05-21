//
//  CurrentPageCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 21/05/2017.
//  Copyright © 2017 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class CurrentPageCell: UICollectionViewCell {
    
    // MARK: - views
    lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 22
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.black.cgColor
        return image
    }()
    
    // MARK: - Variables
    var image = "" {
        didSet {
            self.mainImage.image = UIImage(named: image)
        }
    }
    
    // MARK: - inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(mainImage)
        mainImage.bindFrameToSuperviewBounds()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                mainImage.layer.borderColor = ColorConstants.AppYellow.cgColor
            } else {
                mainImage.layer.borderColor = UIColor.black.cgColor
            }
        }
    }
}
