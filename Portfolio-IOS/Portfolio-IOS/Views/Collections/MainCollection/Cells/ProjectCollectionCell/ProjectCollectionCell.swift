//
//  ProjectCollectionCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class ProjectCollectionCell: UICollectionViewCell {
    // MARK: - Variables and outlets
    @IBOutlet var projectTable: SharedCardTable!{
        didSet {
            projectTable.tableDataSource = TableArrays.projectsDataSource
            projectTable.reloadDataSource()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        projectTable.initTableView()
    }

}
