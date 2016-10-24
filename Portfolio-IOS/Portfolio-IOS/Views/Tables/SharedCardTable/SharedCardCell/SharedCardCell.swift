//
//  ProjectCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class SharedCardCell: UITableViewCell {
     
    // MARK: - Variables & outlets
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    //
    var project : SharedModel?
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell(model : SharedModel){
        self.project = model
        self.mainImage.image = UIImage(named: model.imageName)
        self.titleLabel.text = model.title
    }
    
}
