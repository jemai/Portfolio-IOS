//
//  MainCollection.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 23/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit
//protocole to performe actions
protocol MainCollectionDelegate {
    func scrollMainToIndex(index : IndexPath)
    func scrollToFirstCell()
}
//
class MainCollection: UICollectionView , UICollectionViewDataSource , UICollectionViewDelegate , MainCollectionDelegate{
    
    
    //MARK : Variables
    var menuDataSource  = [UIColor]()
    var flowLayou : UICollectionViewFlowLayout!
    var mainCell = UINib(nibName: "MainCell", bundle:nil)
    var aboutCell = UINib(nibName: "AboutCell", bundle:nil)
    var projectCollectionCell = UINib(nibName: "ProjectCollectionCell", bundle:nil)
    var hobbiesCell = UINib(nibName: "HobbiesCell", bundle:nil)
    var contactCell = UINib(nibName: "ContactCell", bundle:nil)
    
    //
    func initCollection(){
        self.dataSource = self
        self.delegate = self
        self.flowLayou = UICollectionViewFlowLayout()
        self.flowLayou.scrollDirection = .horizontal
        self.collectionViewLayout = flowLayou
        self.register(mainCell, forCellWithReuseIdentifier: "MainCell")
        self.register(aboutCell, forCellWithReuseIdentifier: "AboutCell")
        self.register(projectCollectionCell, forCellWithReuseIdentifier: "ProjectCollectionCell")
        self.register(hobbiesCell, forCellWithReuseIdentifier: "HobbiesCell")
        self.register(contactCell, forCellWithReuseIdentifier: "ContactCell")
        self.backgroundColor = UIColor.white
        self.isScrollEnabled = false
        self.isPagingEnabled = true
        ScrollerManager.sharedManager.scrollingProtocole = self
        self.backgroundColor = ColorConstants.AppBackground
    }
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //
        //
        switch indexPath.row {
        case 0:
            let cell : MainCell = dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCell
            return cell
            
        case 1:
            let cell : AboutCell = dequeueReusableCell(withReuseIdentifier: "AboutCell", for: indexPath) as! AboutCell
            return cell
            
        case 2:
            let cell : ProjectCollectionCell = dequeueReusableCell(withReuseIdentifier: "ProjectCollectionCell", for: indexPath) as! ProjectCollectionCell
            return cell
            
        case 3:
            let cell : ContactCell = dequeueReusableCell(withReuseIdentifier: "ContactCell", for: indexPath) as! ContactCell
            return cell
            
        case 4:
            let cell : HobbiesCell = dequeueReusableCell(withReuseIdentifier: "HobbiesCell", for: indexPath) as! HobbiesCell
            return cell
            
        default:
            return UICollectionViewCell()
        }
    }
    //
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    //
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.size.height
        let width = collectionView.bounds.size.width
        return CGSize(width: width,height: height)
    }
    
    // MARK: - Delegate implementations
    func scrollMainToIndex(index: IndexPath) {
        let indexpath = IndexPath(row: index.row + 1, section: index.section)
        self.scrollToItem(at: indexpath, at: UICollectionViewScrollPosition.centeredHorizontally, animated: true)
    }
    //
    func scrollToFirstCell(){
        let index = IndexPath(row: 0, section: 0)
        ScrollerManager.sharedManager.currentIndex = index
        self.scrollToItem(at: index, at: UICollectionViewScrollPosition.centeredHorizontally, animated: true)
    }

}
