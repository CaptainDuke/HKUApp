//
//  DirectorViewController.swift
//  HKUApp
//
//  Created by Captwang on 7/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit
var numDirector = 0
let clw = """
Prof.Wang C.L.

Deputy Programme Director
"""
let ysm = """
Dr. Yiu S.M.

Associate Programme Director
Cyber Security Stream
"""
let scd = """
Dr. Schnieders D.

Associate Programme Director
Multimedia Computing Stream
"""


var mainProf = ["WangCL","YiuSM","SchD"]
let mainIntro = [clw,ysm,scd]
class DirectorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()

        // Do any additional setup after loading the view.
    }
    
    
 
    
    @IBOutlet weak var subTeacherView: UICollectionView!
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DirectorViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = subTeacherView.dequeueReusableCell(withReuseIdentifier: "subTeacher", for: indexPath) as? myCell
        cell?.myImageView.image = UIImage(named: mainProf[indexPath.row]+".jpg")
        cell?.myTextView.text = mainIntro[indexPath.row]
        return cell!
    }
    
    
}
