//
//  SignupViewController.swift
//  easyPay
//
//  Created by 吴莹羽 on 2017/10/24.
//  Copyright © 2017年 Jingyu Wang. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class SignupViewController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func createAccountAction(_ sender: Any) {
        if emailTF.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            Auth.auth().createUser(withEmail: emailTF.text!, password: passwordTF.text!) { (user, error) in
                
                if error == nil {
                    print("You have successfully signed up")
                    //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
                    
                    var ref: DatabaseReference!
                    
                    ref = Database.database().reference().child("User")
                    let key = ref.childByAutoId().key
                    
                    //creating artist with the given values
                    let user = [
                        "password": self.passwordTF.text! as String,
                        "email": self.emailTF.text! as String
                    ]
                    
                    //adding the artist inside the generated unique key
                    ref.child(key).setValue(user)
                    
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "loginPage")
                    self.present(vc!, animated: true, completion: nil)
                    
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
}
