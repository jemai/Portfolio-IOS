//
//  AccountsManager.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import Foundation
import UIKit
class NavigationManager {
    
    //MARK: - Variables
    var naviGationProtocole : NaviGationProtocole? = nil
    
    // MARK: singleton declaration
    class var sharedManager: NavigationManager {
        struct Singleton {
            static let instance = NavigationManager()
        }
        return Singleton.instance
    }
    
    func pushViewController(viewController : UIViewController){
        if let navigation = self.naviGationProtocole {
            navigation.protocolPushViewController(vc: viewController)
        }
    }
    //
    func presentViewController(viewController : UIViewController, animated : Bool){
        if let navigation = self.naviGationProtocole {
            navigation.protocolPresentViewController(vc: viewController ,animated: animated)
        }
    }
    //
    func setTitle(index : IndexPath){
        self.naviGationProtocole?.setTitle(index: index)
    }
}
