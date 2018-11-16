//
//  ProfInfoVC.swift
//  HKUApp
//
//  Created by Captwang on 7/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class ProfInfoVC: UIViewController {

    @IBAction func dissmissPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var facultyDetail: UITextView!
    var text = ""
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        facultyDetail.text! = text
        // Do any additional setup after loading the view.
    }

}
