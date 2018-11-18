//
//  progOverViewVC.swift
//  HKUApp
//
//  Created by Captwang on 18/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit



let streamsOfStudy = ["GeneralStream","InformationSecurity","FinancialComputing","MultimediaComputing"]

let nameOfStreams = ["General Stream","Cyber Security","Financial Computing","Multimedia Computing"]

let GenDes = """
General Stream

The General Stream covers a broad, comprehensive range of Computer Science subjects, including a wide range of courses from which students can choose from. It offers students the most flexibility to design their own study portfolio based on their career aspiration or requirements.
"""

let CbrDes = """
Cyber Security

The Cyber Security Stream is a multidisciplinary area of study and professional activity concerned with state-of-the-art technology in cyber security. The curriculum covers different aspects of cyber security from different perspectives, including technical, organisational, human-oriented and legal.
"""

let FCDes = """
Financial Computing

The Financial Computing Stream is the study of data and algorithms used in finance and the mathematics of computer programs that realise financial models or systems.

Financial Computing emphasises practical numerical methods and focuses on techniques that are directly applicable to business and financial analysis.

The emphasis will be in the computing aspect of the financial industry.
"""

let MulDes = """
Multimedia Computing

The Multimedia Computing Stream focuses on multimedia computing, communications, analytics, visualisation and applications.

Multimedia Computing encompasses media coding and processing, streaming-media middleware, media representations, real-time protocols, media analysis, and human-interaction and visualisation techniques.

Students are encouraged to develop innovative ideas using the latest development in technology such as mobile devices and big-data analytics.
"""


let streamDescrib = [GenDes,CbrDes,FCDes,MulDes]


class progOverViewVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var streamsCollectView: UICollectionView!
    
    @IBAction func overViewBtn(_ sender: Any) {
        adminSender = """
        The MSc(CompSc) programme is a comprehensive postgraduate study programme provides advanced and in-depth learning in Computer Science.  The programme is credit unit based, with courses of both applied and fundamental nature.
        
        Students can choose focussed streams of study or a comprehensive and diversified study in Computer Science, i.e. the General Stream.
        
        Focussed streams of study represent a cohesive collection of related courses that provides both fundamental and in-depth exposure to students in a given ICT domain.  Students can extend and deepen their knowledge in the specialization streams in Cyber Security, Multimedia Computing and Financial Computing.
        """
    }
    
    @IBAction func enroModeBtn(_ sender: Any) {
        adminSender = """
        Enrolment Mode
        
        Students can study in one of the following enrolment modes:
        
        (a)Courses (60 credits)^ + Project (12 credits)
        
        i.e. 10 Courses + Project
        
        OR
        
        (b)Courses (48 credits)^ + Dissertation (24 credits)
        
        i.e. 8 Courses + Dissertation
        
        ^ Each course normally carries 6 credits
        """
    }
    
    @IBAction func selectOfCourseBtn(_ sender: Any) {
        adminSender = """
        Selection of Courses
        
        Students shall select courses in accordance with the regulations of the degree. To qualify as a graduate of Cyber Security, Financial Computing, or Multimedia Computing Stream, students must pass at least 4 stream specific courses (at least 24 credits in total) in the corresponding subject group, and undertake a dissertation or a project in the area of the corresponding stream. For General Stream, students can choose any discipline courses from any subject group, and undertake a dissertation or a project in any area in computer science
        
        Students may select no more than 2 courses (at most 12 credits in total) offered by the MSc(ECom&IComp) and MSc(Eng) curricula in the Faculty of Engineering as electives.
        """
    }
    
    @IBAction func dissertBtn(_ sender: Any) {
        adminSender = """
        The capstone experience will definitely be beneficial for students to put together what they have learnt in the programme and demonstrate a deeper understanding of the knowledge they have acquired. Students are required to complete a dissertation (24 credits) or a project (12 credits), and attend some supplementary workshops. The dissertation / project would represent students’ consolidated capstone experience in their study.
        """
    }
    
}

extension progOverViewVC:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return streamsOfStudy.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = streamsCollectView.dequeueReusableCell(withReuseIdentifier: "streamOfStudy", for: indexPath) as? facultyCell
        cell?.facultyPhoto.image = UIImage(named: streamsOfStudy[indexPath.row]+".jpg")
        cell?.facultyEmail.text = nameOfStreams[indexPath.row]
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let desVC = mainStoryboard.instantiateViewController(withIdentifier: "ProfInfoVC") as! ProfInfoVC
        desVC.text = streamDescrib[indexPath.row]
        
        //self.navigationController?.pushViewController(desVC, animated: true)
        
        self.present(desVC, animated: true, completion: nil)
    }
}
