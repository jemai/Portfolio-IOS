//
//  DetailsVC.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    // MARK: - variables & outlets
    var model : SharedModel?
    //
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = ColorConstants.AppBackground
        self.mainImage.initWithShadow()
        initViewController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let index = ScrollerManager.sharedManager.currentIndex {
            ScrollerManager.sharedManager.scrollMainToIndex(index: index)
        }
    }
   // MARK: - Initializers
    func initViewController(){
        if let model = self.model {
            self.mainImage.image = UIImage(named: model.imageName)
            self.mainLabel.text = model.description
        }
    }

    @IBAction func popViewActionButton(_ sender: AnyObject) {
        self.dismiss(animated: true)
    }
}
