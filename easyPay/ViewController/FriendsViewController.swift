//
//  FriendsViewController.swift
//  easyPay
//
//  Created by Jingyu Wang on 10/24/17.
//  Copyright © 2017 Jingyu Wang. All rights reserved.
//

import UIKit
import Firebase

class FriendsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableview: UITableView!
    private var names: [String] = ["John Smith paid you", "You paid Adam Kelly", "John Smith paid Adam Kelly"]
    private var amounts: [String] = ["+10", "-12", ""]
    private var msgs: [String] = ["Friday Lunch", "Sunday Uber", "Pizza"]
    private var times: [String] = ["09/13/2017", "10/01/2017", "10/07/2017"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsTableViewCell")! as! FriendsTableViewCell
        
        cell.nameLabel?.text = self.names[indexPath.row]
        cell.msgLabel?.text = self.msgs[indexPath.row]
        cell.timeLabel?.text = self.times[indexPath.row]
        cell.amountLabel?.text = self.amounts[indexPath.row]
        if (indexPath.row==0){
            cell.userImage?.image=#imageLiteral(resourceName: "dog2")
        } else if (indexPath.row==1){
            cell.userImage?.image=#imageLiteral(resourceName: "dog1")
        } else{
            cell.userImage?.image=#imageLiteral(resourceName: "dog2")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
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
