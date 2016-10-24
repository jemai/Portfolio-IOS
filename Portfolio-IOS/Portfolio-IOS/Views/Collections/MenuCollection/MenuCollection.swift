//
//  MenuCollection.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 23/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class MenuCollection:  UICollectionView , UICollectionViewDataSource , UICollectionViewDelegate {
    
    //MARK : Variables
    var menuCell = UINib(nibName: "MenuCell", bundle:nil)
    let menuDataSource = CollectionsArrays.menuDataSource
    var flowLayou : UICollectionViewFlowLayout!
    //
    func initCollection(){
        //init layout
        self.flowLayou = UICollectionViewFlowLayout()
        self.flowLayou.scrollDirection = .vertical
        self.collectionViewLayout = flowLayou
        //
        self.dataSource = self
        self.delegate = self
        self.register(menuCell, forCellWithReuseIdentifier: "MenuCell")        
    }
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuDataSource.count
    }
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : MenuCell = dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as! MenuCell
        cell.initCell(menuModel: menuDataSource[indexPath.row])
        return cell
    }
    //
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        ScrollerManager.sharedManager.scrollMainToIndex(index: indexPath)
    }
    //
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.size.height/2
        let width = collectionView.bounds.size.width/2
        return CGSize(width: width - 16,height: height - 16)
    }
}
