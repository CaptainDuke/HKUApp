//
//  DesignableButton.swift
//  HKUApp
//
//  Created by Captwang on 7/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var borderWidth: CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

}
