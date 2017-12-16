//
//  ViewController.swift
//  ExampleProject
//
//  Created by Matan Cohen on 12/16/17.
//  Copyright © 2017 Matan. All rights reserved.
//

import UIKit
import EasyList

class ViewController: UIViewController {
    var easyListView: EasyListView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = EasyListConfigurationSimple.init(cellHeight: 50, configureCell: { (cell, indexPath) -> UITableViewCell in
            cell.textLabel?.text = String(indexPath.row)
            return cell
        }, dataSourceCount: self.dataSourceCount, cellType: UITableViewCell.self)
        self.easyListView = EasyListView(tableConfiguration:config)
        self.view.addSubview(self.easyListView!)
        self.easyListView?.translatesAutoresizingMaskIntoConstraints = false
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.easyListView?.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.easyListView?.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.easyListView?.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.easyListView?.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    func dataSourceCount() -> Int {
        return 50
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

