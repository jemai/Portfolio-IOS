//
//  MainCell.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 23/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit
protocol MainCellDelegate {
    func scrollMainToIndex(index : IndexPath)
}
class MainCell: UICollectionViewCell , MainCellDelegate{
   
    // MARK: - variables & Outlets
    @IBOutlet weak var menuCollection: MenuCollection!
    var mainCollectionDelegate : MainCollectionDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        menuCollection.mainCellDelegate = self
        menuCollection.initCollection()
    }
    internal func scrollMainToIndex(index: IndexPath) {
        mainCollectionDelegate?.scrollMainToIndex(index: index)
    }

}

