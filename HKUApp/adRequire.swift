//
//  adRequire.swift
//  HKUApp
//
//  Created by Captwang on 16/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit


var Eligibility = ""
var Regulations = ""
var English = ""
var adminSender = ""
class adRequire: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func eligiBtn(_ sender: Any) {
        adminSender = """
        Eligibility
        
        a.    shall comply with the General Regulations;
        
        b.    shall hold a Bachelor’s degree of this University or a qualification of equivalent standard from this University or another comparable institution accepted for this purpose;
        
        c.    for a candidate who is seeking admission on the basis of a qualification from a university or comparable institution outside Hong Kong of which the language of teaching and/or examination is not English, shall satisfy the University English language requirement applicable to high degrees as prescribed under General Regulation G2(b); and
        
        d.    satisfy the examiners in a qualifying examination if required.
        """
    }

    @IBAction func regulaBtn(_ sender: Any) {
        adminSender = """
        Regulations:
        
        1. General Regulations of The University
        https://www4.hku.hk/pubunit/drcd/files/pgdr2017-18/genreg.pdf
        
        2. University's Regulations for Taught Postgraduate Curricula:
        https://www4.hku.hk/pubunit/drcd/files/pgdr2017-18/tpg-regulations.pdf
        
        3. Degree Regulations of MSc(CompSc) for students admitted to the curriculum in 2017-2018 and thereafter:
        http://www.msc-cs.hku.hk/Media/Default/RegulationSyllabus/Regulations_MSc_2017-18.pdf
        http://www.msc-cs.hku.hk/Media/Default/RegulationSyllabus/Syllabus_MSc(CompSc)_2018-19.pdf
        """
    }
    @IBAction func engBtn(_ sender: Any) {
        adminSender = """
        English Language Proficiency Requirement
        
        a. a score of 550 or above (paper-based test) or 80 or above (internet-based test) in the Test of English as a Foreign Language (TOEFL).  Applicants who took the TOEFL should request the Educational Testing Service (ETS) to send an official score report to the University directly. For this purpose, the HKU TOEFL code is 9671. Test scores more than two years old will not be accepted; or
        
        b. a minimum overall band of 6 with no subtest lower than 5.5 in the International English Language Testing System (IELTS); or
        
        c. grade C or above in the Overseas General Certificate of Education (GCE); or
        
        d. grade C or above in the International General Certificate of Secondary Education (IGCSE); or
        
        e. grade C or above in the Cambridge Test of Proficiency in English Language;
        
        unless in exceptional circumstances they are exempted from this requirement.
        """
    }
}
