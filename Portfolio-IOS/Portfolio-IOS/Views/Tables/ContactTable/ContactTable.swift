//
//  ContactTable.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

class ContactTable : UITableView , UITableViewDelegate , UITableViewDataSource {
    
    //MARK: - Variables and outlets
    var tableDataSource = [ContactModel]()
    //MARK: - Initializers
    func initTableView(){
        self.delegate = self
        self.dataSource = self
        //
        self.register(UINib(nibName: "ContactTableCell", bundle: nil), forCellReuseIdentifier: "ContactTableCell")
        self.separatorStyle = .none
        initBackground()
    }
    //
    func initBackground(){
        self.backgroundView = nil
        let view = UIView()
        view.backgroundColor = ColorConstants.DarkBackground
        self.backgroundView = view
    }
    //
    // MARK: - RELOAD DATASROUCE
    func reloadDataSource(){
        self.reloadData()
    }
    
    
    //MARK: - table view implementations
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataSource.count
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.dequeueReusableCell(withIdentifier: "ContactTableCell") as? ContactTableCell {
            cell.initCell(contact: tableDataSource[indexPath.row])
            return cell
        }
        return UITableViewCell()    }
    //
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
