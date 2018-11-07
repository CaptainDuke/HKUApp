//
//  DirectorViewController.swift
//  HKUApp
//
//  Created by Captwang on 7/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit
var numDirector = 0
var mainProf = ["KPChow","CLWang","ShD","SMYiu"]
class DirectorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clWang(_ sender: UIButton) {
        numDirector = 1
        self.performSegue(withIdentifier: "DirectorDetilSegue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
