//
//  ContactTableCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class ContactTableCell: UITableViewCell {
    
    // MARK: - Variables & outlets
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    // MARK: - Init
    func initCell(contact : ContactModel){
        self.mainImage.image = UIImage(named: contact.imageName)
        self.mainLabel.text = contact.link
    }
}
