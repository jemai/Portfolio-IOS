//
//  ScrollerManager.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import Foundation
class ScrollerManager {
    
    //MARK: - Variables
    var scrollingProtocole : MainCollectionDelegate? = nil
    var currentIndex : IndexPath?
    //
    // MARK: singleton declaration
    class var sharedManager: ScrollerManager {
        struct Singleton {
            static let instance = ScrollerManager()
        }
        return Singleton.instance
    }
    
    // MARK: - Protocole functions
    func scrollMainToIndex(index: IndexPath){
        self.scrollingProtocole?.scrollMainToIndex(index: index)
    }
    
    func scrollToFirstCell(){
        self.scrollingProtocole?.scrollToFirstCell()
    }
    
    
}
