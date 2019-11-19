//
//  AccountsVC.swift
//  UINavigation-BackButton
//
//  Created by Adam Chin on 11/19/19.
//  Copyright © 2019 Adam Chin. All rights reserved.
//

import UIKit

class AccountsVC: UIViewController {

  @IBOutlet weak var customBackButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.navigationItem.setHidesBackButton(true, animated: true)
    
    let swipeBack = UISwipeGestureRecognizer(target: self, action: #selector(swipedLeft))
    swipeBack.direction = .right
    self.view.addGestureRecognizer(swipeBack)
    
  }
  @objc
  func swipedLeft () {
    self.navigationController?.popToRootViewController(animated: true)
  }
  @IBAction func tappedBack(_ sender: Any) {
    self.navigationController?.popToRootViewController(animated: true)
  }
  
}
