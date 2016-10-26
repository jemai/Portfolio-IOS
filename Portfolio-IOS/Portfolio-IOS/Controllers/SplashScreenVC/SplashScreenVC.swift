//
//  SplashScreenVC.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 25/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class SplashScreenVC: UIViewController {

    // MARK: - Variables & Outlets
    @IBOutlet weak var splashImageLoader: UIImageView!
    @IBOutlet weak var projectNameLabel: UILabel!
    @IBOutlet weak var appUser: UILabel!
    var animationArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = ColorConstants.DarkBackground
        initViewController()
        startMainVC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startMainVC(){
        DispatchQueue.main.asyncAfter(deadline:.now() + 5.0) {
            if let delegate
                = UIApplication.shared.delegate as? AppDelegate{
                delegate.startMainApp()
            }

        }
    }
    //
    func initViewController(){
        //
        self.animationArray.append(UIImage(named:"splash_screen1")!)
        self.animationArray.append(UIImage(named:"splash_screen2")!)
        self.animationArray.append(UIImage(named:"splash_screen3")!)
        self.animationArray.append(UIImage(named:"splash_screen4")!)
        
        //
        self.splashImageLoader.animationImages = self.animationArray
        self.splashImageLoader.animationDuration = 2.5
        self.splashImageLoader.animationRepeatCount = 0
        self.splashImageLoader.startAnimating()
        //
        self.projectNameLabel.text = AppUserConfig.AppName
        self.appUser.text = AppUserConfig.UserName
        //
        self.appUser.addWhiteShadow()
        
    }

}
