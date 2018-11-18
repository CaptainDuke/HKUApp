//
//  compFeeVC.swift
//  HKUApp
//
//  Created by Captwang on 18/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class compFeeVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func feeBtn(_ sender: Any) {
        adminSender = """
        * Subject to University approval

        Fees for enrolled courses are paid on semester basis.  The first instalment of composition fees of 12 credit-units is payable at the time of acceptance of an offer of admission.

        Generally composition fees for cancelled enrolment before specified deadline are not refunded, but can be used to pay for another enrolled course or carried over to the next semester as credit. (Subject to the approval by the University)
    """
    }

    @IBAction func hkFee(_ sender: Any) {
        adminSender = """
        Some of our courses have been included in the list of reimbursable courses for the Hong Kong Continuing Education Fund (CEF) which provides reimbursement up to HK$10,000 for eligible local students.  More details available at: http://www.wfsfaa.gov.hk/cef/index.htm
        """
    }
    @IBAction func prcFee(_ sender: Any) {
        adminSender = """
        PRC students who have successfully applied and been offered a place in the Master of Science in Computer Science as full-time students in Hong Kong have an opportunity to have their composition fees reduced if they apply and are awarded The China Postgraduate Scholarships for Computer Science.
        
        The maximum number of scholarships for 2019-20 is thirty, with a maximum value of HK$30,000 each.
        
        The scholarships shall be used to meet part of the composition fees for a full-time programme of studies leading to the degree of Master of Science in Computer Science.
        
        The scholarships shall be awarded mainly on the basis of academic merits.
        """
    }
    
}
