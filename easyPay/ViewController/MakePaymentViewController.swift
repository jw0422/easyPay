//
//  MakePaymentViewController.swift
//  easyPay
//
//  Created by 吴莹羽 on 2017/10/24.
//  Copyright © 2017年 Jingyu Wang. All rights reserved.
//

import UIKit
class MakePaymentViewController: UIViewController {
    
    @IBOutlet weak var messageTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        messageTV.becomeFirstResponder()
    }
    
}
