//
//  MainVC+CurrentPageTable.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 21/05/2017.
//  Copyright © 2017 Abdelhak Jemaii. All rights reserved.
//

import UIKit

extension MainVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    func setupCurrentPageMenu(){
        currentPageMenu.delegate = self
        currentPageMenu.dataSource = self
        //
        view.addSubview(currentPageMenu)
        currentPageMenu.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        currentPageMenu.bottomAnchor.constraint(equalTo: titleLab.topAnchor, constant : -8).isActive = true
        currentPageMenu.widthAnchor.constraint(equalToConstant: 208).isActive = true
        currentPageMenu.heightAnchor.constraint(equalToConstant: 44).isActive = true
        //
        currentPageMenu.register(CurrentPageCell.self, forCellWithReuseIdentifier: "CurrentPageCell")
        //
        currentPageMenu.backgroundColor = .clear
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CollectionsArrays.menuDataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CurrentPageCell", for: indexPath) as! CurrentPageCell
        
        cell.image = CollectionsArrays.menuDataSource[indexPath.item].imageName
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 44, height: 44)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        mainCollection.scrollMainToIndex(index: indexPath)
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (Timer) in
            self.hideCurrentPageMenu()
            Timer.invalidate()
        }
    }
    //
    func showCurrentPageCollection(){
        currentPageMenu.isHidden = false

        for cell in currentPageMenu.visibleCells {
            cell.showViewAnimated()
        }
    }
    //
    func hideCurrentPageMenu(){
        for cell in currentPageMenu.visibleCells {
            cell.hideViewAnimated()
        }
        currentPageMenu.isHidden = true
    }
}

