//
//  ProfileViewController
//  tableInTabbed
//
//  Created by Bunlong Heng on 7/30/18.
//  Copyright © 2018 LR Web Design. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let profiles = ["john", "jane", "andrew"]
    let devicesInProfile = ["3", "5", "10"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (profiles.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        cell.profileImg.image = UIImage(named: profiles[indexPath.row] + ".jpg")
        cell.profileName.text = profiles[indexPath.row]
        
        print(profiles[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileDetailViewControllerID") as! ProfileDetailViewController
        vc.indexpath = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.rowHeight = UITableViewAutomaticDimension;
//        tableView.estimatedRowHeight = 70
    }

}

