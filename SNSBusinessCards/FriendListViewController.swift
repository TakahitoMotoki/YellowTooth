//
//  FirstViewController.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/14.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDelegate {
    private let FRIEND_LIST = FriendListViewModel()

    override func loadView() {
        self.view = FriendListView(model: FRIEND_LIST)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let friendListView = self.view as! FriendListView
        friendListView.tableView.delegate = self
        friendListView.tableView.dataSource = FRIEND_LIST
        friendListView.tableView.rowHeight = 56.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
