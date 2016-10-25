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
    func setTitle(index : IndexPath)
}


class MainVC: BaseVC , NaviGationProtocole{

    // MARK: - Variables and outlets
    @IBOutlet weak var mainCollection: MainCollection!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var titleLab: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViewController()
        NavigationManager.sharedManager.naviGationProtocole = self
        home.addWhiteShadow()
        //
        self.mainCollection.isHidden = true
        //
        self.mainCollection.showViewAnimated()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

    }
    
    // MARK: - Initializers
    func initViewController(){
        self.mainCollection.initCollection()
        self.titleLab.text = BaseArrays.TitlesArray[0]
    }
    
    
    // MARK: - Implementations
    func protocolPushViewController(vc : UIViewController){
        self.showDetailViewController(vc, sender: nil)
    }
    func protocolPresentViewController(vc : UIViewController, animated : Bool){
        self.present(vc, animated: animated, completion: nil)
    }
    @IBAction func backToMainCellAction(_ sender: AnyObject) {
        ScrollerManager.sharedManager.scrollToFirstCell()
    }
    //
    func setTitle(index : IndexPath){
        self.titleLab.text = BaseArrays.TitlesArray[index.row]
    }

}
