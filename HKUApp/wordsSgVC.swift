//
//  wordsSgVC.swift
//  HKUApp
//
//  Created by Captwang on 18/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit


let stuList = ["Tony Ngan","Lee Lip Tong","Philip Lee","Cui Yitong","Stoffregen","Liang Xingchi","Karina Vidyantiningrum","Clark","LengSiyu"]

let stuNameList = ["Mr. Ngan Wai Kong \n2017 graduate","Mr. Lee Lip Tong\n2017 graduate","Mr. Lee Tin Yun\n2016 graduate","Miss Cui Yitong\n2017 graduate","Mr. Stoffregen Florian\n2017 graduate","Mr. Liang Xingchi\n2017 graduate","Miss Vidyantiningrum Karina\n2017 graduate","Mr. Clark Matthew William\n2017 graduate","Mr. Leng Siyu\n2017 graduate"]


let nwkWord = """
Ngan Wai Kong
2017 graduate

Looking back the past one and half year studying in HKU MSc(CompSc), a new door was definitely opened for me to work on emerged robotics and drone system. Allowing me to explore new opportunities in learning, collaborating with those talented people and stepping into the road of entrepreneurship. Having a highly flexible curriculum helps me to strengthen on both theoretical and practical side, cultivates me an open mind and motivates me to get good preparation to a world full of challenges.
"""

let lltWord = """
Lee Lip Tong
2017 student

There are a wide range of courses to choose from - AI, cybersecurity and financial computing to name a few. The course contents are up to date and HKU provides quality resources so that the learning process is smooth and unhindered.  The best part about the MSc programme is perhaps the people that you meet - I’ve made many friends with similar interest and drive.  We also have down-to-earth professors who are willing to dedicate time and effort to introduce current concepts and topics relevant to the industry.  On top of having a rigorous and well laid out curriculum, studying at HKU gives me an enjoyable and dynamic student life.  I am able to easily meet people entering or already working in the tech industry and I’m also able to practice and learn both Cantonese and Mandarin due to the diversity of students.  Lastly, Hong Kong provides a fun and safe place to study and is ideally located to immerse oneself into what is perhaps the world’s largest and most sophisticated mecca of technology - the Greater Bay Area."
"""

let stuWords = [nwkWord,lltWord,nwkWord,lltWord,nwkWord,lltWord,nwkWord,lltWord,nwkWord]

class wordsSgVC: BaseViewController {

    @IBOutlet weak var SGcollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
        
        let itemSizeWidth = UIScreen.main.bounds.width/2 - 2
        let itemSizeHeight = SGcollectionView.bounds.height/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        //layout.scrollDirection = UICollectionViewScrollDirectionHorizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: itemSizeWidth, height: itemSizeHeight )
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        SGcollectionView.collectionViewLayout = layout
        
    }
    
    @IBAction func SgBtn(_ sender: Any) {
        adminSender = """
        But a master’s programme does not have to be the last chapter of your learning merely technical, hard-core information technology; it can serve as a springboard to other career opportunities and learning challenges. For example, many of our graduates who find themselves moving into management, may continue their studies towards an MBA degree, while others may go on to doctoral studies here at HKU or elsewhere.
        
        Some of our students and graduates would also like to share their experience with you.
        """
    }
    

}

extension wordsSgVC:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stuList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = SGcollectionView.dequeueReusableCell(withReuseIdentifier: "studentWord", for: indexPath) as? facultyCell
        cell?.facultyPhoto.image = UIImage(named: stuList[indexPath.row]+".jpg")
        cell?.facultyEmail.text = stuNameList[indexPath.row]
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let desVC = mainStoryboard.instantiateViewController(withIdentifier: "ProfInfoVC") as! ProfInfoVC
        desVC.text = stuWords[indexPath.row]
        
        //self.navigationController?.pushViewController(desVC, animated: true)
        
        self.present(desVC, animated: true, completion: nil)
    }
}
