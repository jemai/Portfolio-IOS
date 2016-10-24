//
//  AboutCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class AboutCell: UICollectionViewCell {

    // MARK: - variables & outlets
    var mainCollectionDelegate : MainCollectionDelegate?
    //
    @IBOutlet weak var abouttext: UILabel!
    @IBOutlet weak var imageHolder: UIView!
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        imageHolder.initWithShadow()
        abouttext.text = LongTexts.AboutText
    }

}
