//
//  OrderViewController.swift
//  SmartCanteenVer0.0.3
//
//  Created by 张思远 on 2021/10/17.
//

import Foundation
import UIKit

class OrderViewController: UIViewController{
    @IBOutlet var buttonBar: UIToolbar!
    @IBOutlet var allOrderButton: UIBarButtonItem!
    @IBOutlet var waitingForEvaluationButton: UIBarButtonItem!
    @IBOutlet var finishedButton: UIBarButtonItem!
    @IBOutlet var refundingButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let spacer =  UIBarButtonItem.init(systemItem: .flexibleSpace, primaryAction: nil, menu: nil)
        buttonBar.items = [allOrderButton, spacer, waitingForEvaluationButton, spacer, finishedButton, spacer, refundingButton]
    }
    
    
}
