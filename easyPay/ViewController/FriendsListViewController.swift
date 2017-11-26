//
//  FriendsListViewController.swift
//  easyPay
//
//  Created by Jingyu Wang on 10/24/17.
//  Copyright © 2017 Jingyu Wang. All rights reserved.
//

import UIKit

class FriendsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    private var names: [String] = ["John Smith", "Adam Kelly"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsListTableViewCell")! as! FriendsListTableViewCell
        cell.nameLabel?.text = self.names[indexPath.row]
        if (indexPath.row==0){
            cell.userImage?.image=#imageLiteral(resourceName: "dog2")
        } else{
            cell.userImage?.image=#imageLiteral(resourceName: "dog1")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
