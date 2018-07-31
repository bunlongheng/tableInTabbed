//
//  ProfileViewController
//  tableInTabbed
//
//  Created by Bunlong Heng on 7/30/18.
//  Copyright © 2018 LR Web Design. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let profiles = ["john", "jane", "andrew"]
    let devicesInProfile = ["3", "5", "10"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (profiles.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.profileImg.image = UIImage(named: profiles[indexPath.row] + ".jpg")
        cell.profileName.text = profiles[indexPath.row]
        cell.devicesInProfile.text = devicesInProfile[indexPath.row]
        
        print(profiles[indexPath.row])
        
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

