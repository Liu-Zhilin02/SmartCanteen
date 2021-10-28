//
//  ProfileViewController.swift
//  SmartCanteenVer0.0.3
//
//  Created by 张思远 on 2021/10/17.
//

import Foundation
import UIKit
import SnapKit

class ProfileViewController: UIViewController{
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var accountButton: UIButton!
    @IBOutlet var plateButton: UIButton!
    @IBOutlet var faceButton: UIButton!
    @IBOutlet var helpButton: UIButton!
    @IBOutlet var bellButton: UIButton!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var smallRedPoint: UILabel!
    @IBAction func pressAccount(_sender: AnyObject){
        let balanceViewController = storyboard?.instantiateViewController(withIdentifier: "balance_vc") as! BalanceViewController
        
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = .push
        transition.subtype = .fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        
        balanceViewController.modalPresentationStyle = .fullScreen
        
        self.present(balanceViewController, animated: false, completion: nil)

    }
    
    let screenWidth = UIScreen.main.bounds.maxX
    let buttonHeight = 0.27 * UIScreen.main.bounds.maxY
    func initRedPoint(){
        smallRedPoint.frame = CGRect(x: bellButton.frame.maxX - 15, y: bellButton.frame.minY, width: 16, height: 16)
        smallRedPoint.layer.masksToBounds = true
        smallRedPoint.layer.cornerRadius = 8
        print(bellButton.frame)
        print(smallRedPoint.frame)
        
    }
    
    func initPhotoView(){
        photoImageView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 0.16 * screenWidth, height: 0.16 * screenWidth))
            make.centerX.equalToSuperview()
            make.top.equalTo(0).offset(0.16 * screenWidth)
        }
        photoImageView.layer.cornerRadius = 0.08 * screenWidth
        
    }
    
    func initAccountButton(){
        accountButton.layer.cornerRadius = 10
        accountButton.translatesAutoresizingMaskIntoConstraints = false
        accountButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(0.04 * screenWidth)
            make.top.equalTo(backgroundImageView.snp_bottomMargin).offset(-buttonHeight / 2)
            make.size.equalTo(CGSize(width: 0.44 * screenWidth, height: buttonHeight))
            
        }
        accountButton.backgroundColor = .white
    }
    
    func initPlateButton(){
        plateButton.layer.cornerRadius = 10
        plateButton.translatesAutoresizingMaskIntoConstraints = false
        plateButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-0.04 * screenWidth)
            make.top.equalTo(backgroundImageView.snp_bottomMargin).offset(-buttonHeight / 2)
            make.size.equalTo(CGSize(width: 0.44 * screenWidth, height: buttonHeight))
            
        }
        plateButton.backgroundColor = .white
        
    }
    
    func initFaceButton(){
        faceButton.layer.cornerRadius = 10
        faceButton.translatesAutoresizingMaskIntoConstraints = false
        faceButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(0.04 * screenWidth)
            make.top.equalTo(accountButton.snp_bottomMargin).offset(0.06 * screenWidth)
            make.size.equalTo(CGSize(width: 0.44 * screenWidth, height: buttonHeight))
            
        }
        faceButton.backgroundColor = .white
    }
    
    func initHelpButton(){
        helpButton.layer.cornerRadius = 10
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        helpButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-0.04 * screenWidth)
            make.top.equalTo(plateButton.snp_bottomMargin).offset(0.06 * screenWidth)
            make.size.equalTo(CGSize(width: 0.44 * screenWidth, height: buttonHeight))
            
        }
        helpButton.backgroundColor = .white
    }
    
    func initBackGroundImageView(){
        let beforeY = backgroundImageView.frame.minY
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: backgroundImageView.frame.height + beforeY)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(backgroundImageView.frame.minX)
        initBackGroundImageView()
        initRedPoint()
        initAccountButton()
        initPlateButton()
        initFaceButton()
        initHelpButton()
        initPhotoView()
        
    }
    
    
    
}

