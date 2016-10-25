//
//  ContactCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class ContactCell: UICollectionViewCell {
    // MARK: - Variables
    @IBOutlet weak var contactTable: ContactTable!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contactTable.tableDataSource = TableArrays.contactDataSource
        self.contactTable.initTableView()
        self.backgroundColor = ColorConstants.ContactBackground
    }

}
