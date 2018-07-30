//
//  FirstViewController.swift
//  tableInTabbed
//
//  Created by Bunlong Heng on 7/30/18.
//  Copyright © 2018 LR Web Design. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let animals = ["john", "jane", "andrew"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (animals.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        cell.profileImg.image = UIImage(named: animals[indexPath.row] + ".jpg")
        cell.profileName.text = animals[indexPath.row]
        
        print(animals[indexPath.row])
        
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

