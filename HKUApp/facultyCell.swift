//
//  facultyCell.swift
//  HKUApp
//
//  Created by Captwang on 16/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class facultyCell: UICollectionViewCell {
    @IBOutlet weak var facultyPhoto: UIImageView!
    
    @IBAction func facultyDetail(_ sender: UIButton) {
       
        self.performSegue(withIdentifier: "DirectorDetilSegue", sender: self)
    }
    @IBOutlet weak var facultyEmail: UITextView!
}
