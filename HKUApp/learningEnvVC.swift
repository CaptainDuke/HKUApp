//
//  learningEnvVC.swift
//  HKUApp
//
//  Created by Captwang on 19/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit

class learningEnvVC: BaseViewController {

    @IBOutlet weak var progOfficeCollecView: UICollectionView!
    
    @IBOutlet weak var ITsMoodCollectView: UICollectionView!
    
    @IBOutlet weak var UServiceCollectView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }
    



}

extension learningEnvVC:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
            switch collectionView.tag {
            case 0:
                return 1
            case 1:
                return 2
            case 2:
                return 3
            default:
                return 4
            }
        
//            return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView.tag {
        case 0:
            let cell = progOfficeCollecView.dequeueReusableCell(withReuseIdentifier: "ProgOffice", for: indexPath) as? facultyCell
            cell?.facultyPhoto.image = UIImage(named: facultyList[indexPath.row]+".jpg")
            cell?.facultyEmail.text = facultyList[indexPath.row]
            return cell!

        case 1:
            let cell1 = ITsMoodCollectView.dequeueReusableCell(withReuseIdentifier: "ITMoodles", for: indexPath) as? facultyCell
            cell1?.facultyPhoto.image = UIImage(named: facultyList[indexPath.row]+".jpg")
            cell1?.facultyEmail.text = facultyList[indexPath.row]
            return cell1!

        case 2:
            let cell2 = UServiceCollectView.dequeueReusableCell(withReuseIdentifier: "UServices", for: indexPath) as? facultyCell
            cell2?.facultyPhoto.image = UIImage(named: facultyList[indexPath.row]+".jpg")
            cell2?.facultyEmail.text = facultyList[indexPath.row]
            return cell2!


        default:
            let cell3 = progOfficeCollecView.dequeueReusableCell(withReuseIdentifier: "ProgOffice", for: indexPath) as? facultyCell
            cell3?.facultyPhoto.image = UIImage(named: facultyList[indexPath.row]+".jpg")
            cell3?.facultyEmail.text = facultyList[indexPath.row]
            return cell3!
        }
    }
    

    
    
    
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let desVC = mainStoryboard.instantiateViewController(withIdentifier: "ProfInfoVC") as! ProfInfoVC
//        
//        
//        switch collectionView.tag {
//        case 0:
//            desVC.text = facultyDetails[indexPath.row]
//        case 1:
//            desVC.text = facultyDetails[indexPath.row]
//        case 2:
//            desVC.text = facultyDetails[indexPath.row]
//        default:
//            desVC.text = facultyDetails[indexPath.row]
//        }
//
//        
//        self.present(desVC, animated: true, completion: nil)
//    }
}
