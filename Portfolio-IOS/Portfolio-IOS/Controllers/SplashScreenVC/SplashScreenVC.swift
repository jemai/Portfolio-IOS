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
    var animationArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()

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
        self.animationArray.append(UIImage(named:"splash_screen-1")!)
        self.animationArray.append(UIImage(named:"splash_screen-2")!)
        self.animationArray.append(UIImage(named:"splash_screen-3")!)
        self.animationArray.append(UIImage(named:"splash_screen-4")!)
        
        //
        self.splashImageLoader.animationImages = self.animationArray
        self.splashImageLoader.animationDuration = 2.5
        self.splashImageLoader.animationRepeatCount = 0
        self.splashImageLoader.startAnimating()
    }

}
