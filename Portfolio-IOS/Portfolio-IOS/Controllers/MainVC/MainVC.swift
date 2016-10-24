//
//  MainVC.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 23/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class MainVC: BaseVC {

    // MARK: - Variables and outlets
    @IBOutlet weak var mainCollection: MainCollection!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.initViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Initializers
    func initViewController(){
        self.mainCollection.initCollection()
    }
    
}
