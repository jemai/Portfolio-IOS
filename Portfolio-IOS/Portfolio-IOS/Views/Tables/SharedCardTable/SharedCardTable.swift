//
//  ProjectTable.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//


import UIKit

class SharedCardTable : UITableView , UITableViewDelegate , UITableViewDataSource {
    
    //MARK: - Variables and outlets
    var tableDataSource = [SharedModel]()
    //MARK: - Initializers
    func initTableView(){
        self.delegate = self
        self.dataSource = self
        //
        self.register(UINib(nibName: "SharedCardCell", bundle: nil), forCellReuseIdentifier: "SharedCardCell")
        self.separatorStyle = .none
        //
        initBackground()
    }
    //
    // MARK: - RELOAD DATASROUCE
    func reloadDataSource(){
        self.reloadData()
    }
    //
    func initBackground(){
        let view = UIView()
        view.backgroundColor = ColorConstants.AppBackground
        self.backgroundView = view
    }

    
    //MARK: - table view implementations
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataSource.count
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.dequeueReusableCell(withIdentifier: "SharedCardCell") as? SharedCardCell {
            cell.initCell(model: tableDataSource[indexPath.row])
            return cell
        }
        return UITableViewCell()    }
    //
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.frame.height/2
    }
    //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let details = DetailsVC(nibName: "DetailsVC", bundle: nil)
        details.model = tableDataSource[indexPath.row]
        NavigationManager.sharedManager.presentViewController(viewController: details, animated: true)
    }
}
