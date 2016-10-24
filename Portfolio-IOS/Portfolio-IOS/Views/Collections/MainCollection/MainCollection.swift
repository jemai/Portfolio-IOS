//
//  MainCollection.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 23/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit
//protocole to performe actions
protocol mainCollectionDelegate {
    func scrollMainToIndex(index : IndexPath)
}
class MainCollection: UICollectionView , UICollectionViewDataSource , UICollectionViewDelegate , mainCollectionDelegate{
    
    
    //MARK : Variables
    var menuDataSource  = [UIColor]()
    var flowLayou : UICollectionViewFlowLayout!
    var mainCell = UINib(nibName: "MainCell", bundle:nil)
    
    //
    func initCollection(){
        self.dataSource = self
        self.delegate = self
        self.flowLayou = UICollectionViewFlowLayout()
        self.flowLayou.scrollDirection = .horizontal
        self.collectionViewLayout = flowLayou
        self.register(mainCell, forCellWithReuseIdentifier: "MainCell")
        self.backgroundColor = UIColor.white
        
    }
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : MainCell = dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCell
        cell.mainDelegate = self
        cell.backgroundColor = UIColor.red
        return cell
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
        self.scrollToItem(at: index, at: UICollectionViewScrollPosition.centeredHorizontally, animated: true)
    }

}
