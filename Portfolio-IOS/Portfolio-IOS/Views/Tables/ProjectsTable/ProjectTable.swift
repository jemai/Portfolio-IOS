//
//  ProjectTable.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//


import UIKit

class ProjectTable : UITableView , UITableViewDelegate , UITableViewDataSource {
    
    //MARK: - Variables and outlets
    //
    
    //MARK: - Initializers
    //MARK: - currency fulter init
    func initTableView(){
        self.delegate = self
        self.dataSource = self
        //
        self.register(UINib(nibName: "ProjectCell", bundle: nil), forCellReuseIdentifier: "ProjectCell")
        reloadRevenusDataSource()
    }
    //
    
    //
    // MARK: - RELOAD DATASROUCE
    func reloadRevenusDataSource(){
        self.reloadData()
    }
    
    
    //MARK: - table view implementations
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectCell") as? ProjectCell {
            return cell
        }
        return UITableViewCell()
    }
    //
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.frame.height/3
    }
    //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
