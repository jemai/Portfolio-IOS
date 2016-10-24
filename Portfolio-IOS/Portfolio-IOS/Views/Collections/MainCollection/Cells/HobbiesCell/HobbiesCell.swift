//
//  HobbiesCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class HobbiesCell: UICollectionViewCell {

    // MARK: - Variables & outlets
    @IBOutlet var hobbiesTable: SharedCardTable!
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        self.hobbiesTable.initTableView()
    }

}
