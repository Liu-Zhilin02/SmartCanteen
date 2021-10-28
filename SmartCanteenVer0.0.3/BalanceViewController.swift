//
//  BalanceViewController.swift
//  SmartCanteenVer0.0.3
//
//  Created by 张思远 on 2021/10/18.
//

import Foundation
import UIKit

class BalanceViewController: UIViewController, UIGestureRecognizerDelegate, UINavigationControllerDelegate{
    @IBOutlet var navgationBar: UINavigationBar!
    @IBOutlet var titleItem: UINavigationItem!
    @IBOutlet var yue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navgationBar.barTintColor = .white.withAlphaComponent(0)
        yue.font = UIFont.init(name: "PingFangSC-Semibold", size: 50)
        yue.text = "86.51"
    
        
  
    }
    
    
    
}
