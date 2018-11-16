//
//  adminPopVC.swift
//  HKUApp
//
//  Created by Captwang on 16/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class adminPopVC: UIViewController {

    @IBOutlet weak var showTextView: UITextView!
    
    @IBAction func dismissPop(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnPressed()
        // Do any additional setup after loading the view.
    }
    
    func btnPressed() {
        if 1 == 1{
            showTextView.text = adminSender
            adminSender = Regulation
        }
    }

  

}
