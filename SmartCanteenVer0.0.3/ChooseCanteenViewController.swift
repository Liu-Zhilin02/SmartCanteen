//
//  ChooseCanteenViewController.swift
//  SmartCanteenVer0.0.3
//
//  Created by 张思远 on 2021/10/19.
//

import Foundation
import UIKit



class ChooseCanteenViewController: UITableViewController{
    
    @IBOutlet var toolBar: UIToolbar!
    @IBOutlet var backButtonItem: UIBarButtonItem!
    @IBOutlet var cancelButtonItem: UIBarButtonItem!
    @IBOutlet var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        let spacer =  UIBarButtonItem.init(systemItem: .flexibleSpace, primaryAction: nil, menu: nil)
        toolBar.items = [backButtonItem, spacer, cancelButtonItem]
        
        
    }
    
    
    
}
