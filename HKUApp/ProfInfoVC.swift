//
//  ProfInfoVC.swift
//  HKUApp
//
//  Created by Captwang on 7/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class ProfInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        test.text = mainProf[numDirector]
        // Do any additional setup after loading the view.
    }
 
    @IBOutlet weak var test: UITextField!
    
    @IBAction func dismissPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
