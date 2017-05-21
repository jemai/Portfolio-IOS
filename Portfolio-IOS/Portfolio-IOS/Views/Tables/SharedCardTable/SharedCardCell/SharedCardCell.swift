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
    @IBOutlet weak var holder: UIView!
    //
    var model : SharedModel?
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        holder.initWithShadow()
        self.backgroundColor = ColorConstants.DarkBackground
        self.titleLabel.backgroundColor = ColorConstants.AppYellow
        self.titleLabel.layer.borderWidth = 1
        self.titleLabel.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell(model : SharedModel){
        self.model = model
        self.mainImage.image = UIImage(named: model.imageName)
        self.titleLabel.text = model.title.uppercased()
    }
    
    @IBAction func showDetails(_ sender: AnyObject) {
        
        let details = DetailsVC(nibName: "DetailsVC", bundle: nil)
        details.model = self.model
        NavigationManager.sharedManager.presentViewController(viewController: details, animated: true)

    }
}
