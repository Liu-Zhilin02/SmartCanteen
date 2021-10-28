//
//  HomePageViewController.swift
//  SmartCanteenVer0.0.3
//
//  Created by 张思远 on 2021/10/16.
//

import Foundation
import UIKit
//import UIGradient
import SnapKit
import CoreLocation


class HomePageViewController: UIViewController{
    let screenWidth = UIScreen.main.bounds.width
   // @IBOutlet var topBarView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var infoView: UIView!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var locationButton: UIButton!
    
    @IBAction func isPressed(_ sender: AnyObject){
        
        
        
    }
    
    func initTopBar(){
        //topBarView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenWidth / 3.05)
//        print("top bar: \(topBarView.frame)")
//        let gradient = GradientLayer(direction: GradientDirection.leftToRight , colors: [UIColor(red: 0x44/255, green: 0xB9/255, blue: 0xFF/255, alpha: 1), UIColor(red: 0x40/255, green: 0x98/255, blue: 0xFF/255, alpha: 1)])
//        gradient.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
//        print("gradient: \(gradient.frame)")
//        topBarView.addGradient(gradient)
        
    }
    
    func initInfoView(){
        
        
        
    }
    
    func initScrollView(){

        let scrollViewWidth = 0.92 * screenWidth
        let scrollViewHeight = scrollViewWidth / 3.45
        
        scrollView.frame = CGRect(x: 0.04 * screenWidth, y: imageView.frame.height - (scrollViewHeight / 2), width: scrollViewWidth, height: scrollViewHeight)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTopBar()
        initInfoView()
        initScrollView()

    }
    
    
    
}
