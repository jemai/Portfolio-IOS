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
    var isAnimating = false
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = UIColor.white
        self.mainImage.addWhiteShadow()
        self.backgroundColor = ColorConstants.DarkBackground
        //
        mainImage.isUserInteractionEnabled = true
        mainImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(wobble)))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    // MARK: - Init
    func initCell(contact : ContactModel){
        self.mainImage.image = UIImage(named: contact.imageName)
        self.mainLabel.text = contact.link.uppercased()
    }
    
    
    func wobble(){
        if !isAnimating {
            mainImage.layer.removeAllAnimations()
            let anim = CAKeyframeAnimation( keyPath:"transform" )
            let rot = 15 * M_PI / 180.0
            anim.values = [
                NSValue( caTransform3D:CATransform3DMakeRotation(CGFloat(rot) , 0, 0, 1) ),
                NSValue( caTransform3D:CATransform3DMakeRotation(CGFloat(-rot) , 0, 0, 1) )
            ]
            anim.autoreverses = true
            anim.repeatCount = .infinity
            anim.duration = 7/100
            
            mainImage.layer.add( anim, forKey:nil )
        }else {
            mainImage.layer.removeAllAnimations()
        }
        isAnimating = !isAnimating
    }

}
