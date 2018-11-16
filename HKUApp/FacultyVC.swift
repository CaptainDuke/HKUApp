//
//  FacultyVC.swift
//  HKUApp
//
//  Created by Captwang on 15/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit


let facultyList = ["Dr. Chim T.W.","Prof. Lam T.W.","Dr. Wong K.K.Y.","Dr. Schnieders D.","Dr. Pun K.K.H.","Dr. Lau V.M.K.","Dr. Chung H.Y.","Prof. Cheung D.W.L.","Prof. Wang W.","Mr. Ng P.T.L.","Prof. Tse T.H.","Dr. Chow K.P.","Dr. Yiu S.M.","Dr. Tam A.T.C.","Prof. White B.","Dr. Ting H.F.","Dr. Yiu S.W.","Prof. Kao B.C.M.","Dr. Cheng R.C.K.","Dr. Wu C.","Dr. Chan H.T.H.","Dr. Rahmel J.H.","Dr. Chan K.P.","Prof. Lau F.C.M.","Mr. Mitcheson, G."]

let emailList = ["hubert@cs.hku.hk","kpchan@cs.hku.hk"]
let ctw = """
Dr. Chim T.W.

PhD (HK)
Field of Research
Network Security and Cryptography
twchim@cs.hku.hk
"""

let ltw = """
Prof. Lam T.W.

PhD (Washington)
Field of Research
Algorithms, Computational Biology
twlam@cs.hku.hk
"""

let wkk = """
Dr. Wong K.K.Y.

PhD (Cambridge)
Field of Research
Camera Calibration, Motion Tracking
kykwong@cs.hku.hk
"""

let sd = """
Dr. Schnieders D.

PhD (HK)
Field of Research
Computer Vision, Image Processing, Pattern Recognition
sdirk@cs.hku.hk
"""

let pkh = """
Dr. Pun K.K.H.

PhD (Illinois); LLB, LLM (London)
Field of Research
Information Technology Law, e-Commerce, e-Crimes, Computerization of Law
pun@cs.hku.hk
"""

let facultyDetails = [ctw,ltw,wkk,sd,pkh,ctw,ltw,wkk,sd,pkh,ctw,ltw,wkk,sd,pkh,ctw,ltw,wkk,sd,pkh,ctw,ltw,wkk,sd,pkh]

class FacultyVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
        let itemSizeWidth = UIScreen.main.bounds.width/3 - 3
        let itemSizeHeight = teacherView.bounds.height/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        //layout.scrollDirection = UICollectionViewScrollDirectionHorizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: itemSizeWidth, height: itemSizeHeight )
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        teacherView.collectionViewLayout = layout
        
    }
    

    @IBOutlet weak var teacherView: UICollectionView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

        
}
extension FacultyVC:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return facultyList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = teacherView.dequeueReusableCell(withReuseIdentifier: "teacher", for: indexPath) as? facultyCell
        cell?.facultyPhoto.image = UIImage(named: facultyList[indexPath.row]+".jpg")
        cell?.facultyEmail.text = facultyList[indexPath.row]
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let desVC = mainStoryboard.instantiateViewController(withIdentifier: "ProfInfoVC") as! ProfInfoVC
        desVC.text = facultyDetails[indexPath.row]
        
        //self.navigationController?.pushViewController(desVC, animated: true)

        self.present(desVC, animated: true, completion: nil)
    }
}
