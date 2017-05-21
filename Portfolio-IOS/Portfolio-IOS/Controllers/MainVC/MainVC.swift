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
    @IBOutlet weak var mainControle: UIPageControl!
    //
    @IBOutlet weak var mainCollection: MainCollection!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var titleLab: UILabel!
    //
    lazy var currentPageMenu: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 8
        //
        let currentPage = UICollectionView(frame: .zero, collectionViewLayout: layout)
        currentPage.translatesAutoresizingMaskIntoConstraints = false
        currentPage.contentMode = .center
        currentPage.isHidden = true
        return currentPage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViewController()
        NavigationManager.sharedManager.naviGationProtocole = self
        home.addWhiteShadow()
        //
        self.mainCollection.isHidden = true
        //
        self.mainCollection.showViewAnimated()
        //
        setupCurrentPageMenu()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    // MARK: - Initializers
    func initViewController(){
        self.mainCollection.initCollection()
        self.titleLab.text = BaseArrays.TitlesArray[0]
        self.mainControle.addWhiteShadow()
        self.mainControle.numberOfPages = BaseArrays.TitlesArray.count
        self.mainControle.currentPage = 0
        //
        self.titleLab.isUserInteractionEnabled = true
        self.titleLab.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showCurrentPageCollection)))
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
        if currentPageMenu.isHidden { return }
        hideCurrentPageMenu()
    }
    //
    func setTitle(index : IndexPath){
        self.titleLab.text = BaseArrays.TitlesArray[index.row]
        self.mainControle.currentPage = index.row
        //
        selectCurrentPage(at: index)
    }
    //
    func selectCurrentPage(at index : IndexPath) {
        if index.item == 0 {
            guard let indexPath = currentPageMenu.indexPathsForSelectedItems?.first else { return  }
            currentPageMenu.deselectItem(at: indexPath, animated: false)
            return
        }
        //
        let indexPath = IndexPath(item: index.item - 1, section: index.section)
        self.currentPageMenu.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
    }
}
