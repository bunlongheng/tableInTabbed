//
//  ProfileDetailViewController.swift
//  tableInTabbed
//
//  Created by Bunlong Heng on 7/31/18.
//  Copyright © 2018 LR Web Design. All rights reserved.
//

import UIKit

class ProfileDetailViewController: UIViewController {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var deviceCount: UILabel!
    
    let profiles = ["john", "jane", "andrew"]
    let devicesInProfile = ["3", "5", "10"]
    var indexpath = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImg.image = UIImage(named: profiles[indexpath] + ".jpg")
        profileName.text = profiles[indexpath]
        deviceCount.text = devicesInProfile[indexpath]
        
        print(indexpath)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
  
}
