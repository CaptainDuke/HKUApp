//
//  FirstViewController.swift
//  HKUApp
//
//  Created by Captwang on 6/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        topImg.image = UIImage(named: imgList[myIndex])
        parag.text = paraList[myIndex]
      
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var topImg: UIImageView!
  
    @IBOutlet weak var parag: UITextView!
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
