//
//  MainVC.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 23/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

// MARK: - Navigation protocole
protocol NaviGationProtocole{
    func protocolPushViewController(vc : UIViewController)
    func protocolPresentViewController(vc : UIViewController , animated : Bool)
}

class MainVC: BaseVC , NaviGationProtocole{

    // MARK: - Variables and outlets
    @IBOutlet weak var mainCollection: MainCollection!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.initViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        NavigationManager.sharedManager.naviGationProtocole = self

    }

    // MARK: - Initializers
    func initViewController(){
        self.mainCollection.initCollection()
    }
    
    
    func protocolPushViewController(vc : UIViewController){
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func protocolPresentViewController(vc : UIViewController, animated : Bool){
        self.navigationController?.present(vc, animated: animated, completion: nil)
    }
}
