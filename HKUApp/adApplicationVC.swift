//
//  adApplicationVC.swift
//  HKUApp
//
//  Created by Captwang on 16/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class adApplicationVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func applicationBtn(_ sender: Any) {
        adminSender = """
        • Graduate transcript(s) with grading system of all tertiary level studies
        
        • Degree certificate(s)
        
        • English Language proficiency test score report, such as TOEFL or IELTS (only for applicants with qualifications from institutions outside Hong Kong where the language of instruction and/or examination is not English)
        
        • Proof of Cumulative Grade Point Average (CGPA) / average grade / average mark
        
        • Official proof of class ranking, if available
        
        • A curriculum vitae (C.V.)
        
        Applicants are not required to submit original documents during the application stage.  Should an applicant be given an admission offer by the Programme, he/she will receive notification of the need to submit original/certified true copy* of the documents to the MSc(CompSc) Programme Office.
        
        Please note that documents once submitted will not be returned, and will be destroyed if the application is unsuccessful.
        
        *The University will only ACCEPT originals and copies of the documents that have been duly declared as true copies before a notary public.
        """
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
