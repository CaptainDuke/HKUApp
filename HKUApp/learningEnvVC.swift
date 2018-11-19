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
    
    let OfficeJpgList = ["ProgrammeOffice-1","P207","HKUMScCS_Intranet"]
    let ItsJpgList = ["HKU-ITS","ChiWah","Panopto-eg"]
    let UServiceJpgList = ["MainLib","car-park","HKU_IHP"]
    
    let OfficeNameList = ["MSc Programme Office","Student Lounge", "The MSc(CompSc) Intranet"]
    let ItsNameList = ["ITS Website","Chi Wah Learning Commons","Panopto Recorder"]
    let USNameList = ["Main Library","Car Park","Sports Center"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
        
        let itemSizeWidth = 168
        let itemSizeHeight = 108

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        //layout.scrollDirection = UICollectionViewScrollDirectionHorizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: itemSizeWidth, height: itemSizeHeight )

//        layout.minimumInteritemSpacing = 3
//        layout.minimumLineSpacing = 3
        progOfficeCollecView.collectionViewLayout = layout
//
    }
    

    
}

extension learningEnvVC:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
            switch collectionView.tag {
            case 0:
                return 3
            case 1:
                return 3
            case 2:
                return 3
            default:
                return 3
            }
        
//            return 3
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//        let width = collectionView.bounds.width/2
//        let height = width
//        
//        switch collectionView.tag {
//        case 0:
//            //phone
//            //height = self.progOfficeCollecView.frame.height
//            return CGSize(width: 1000, height: height)
//        case 1:
//            //color
//            //height = self.ITsMoodCollectView.frame.height
//            return CGSize(width: height-24, height: height-24)
//        case 2:
//            //direction
//           // height = self.UServiceCollectView.frame.height
//            return CGSize(width: (width-16)/3, height: height)
//        default:
//            
//            return CGSize(width: width/5, height: height-8)
//        }
//        
//        
//    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView.tag {
        case 0:
            let cell = progOfficeCollecView.dequeueReusableCell(withReuseIdentifier: "ProgOffice", for: indexPath) as? facultyCell
       
            cell?.facultyPhoto.image = UIImage(named: OfficeJpgList[indexPath.row]+".jpg")
            cell?.facultyEmail.text = OfficeNameList[indexPath.row]
            return cell!

        case 1:
            let cell1 = ITsMoodCollectView.dequeueReusableCell(withReuseIdentifier: "ITMoodles", for: indexPath) as? facultyCell
            cell1?.facultyPhoto.image = UIImage(named: ItsJpgList[indexPath.row]+".jpg")
            cell1?.facultyEmail.text = ItsNameList[indexPath.row]
            return cell1!

        case 2:
            let cell2 = UServiceCollectView.dequeueReusableCell(withReuseIdentifier: "UServices", for: indexPath) as? facultyCell
            cell2?.facultyPhoto.image = UIImage(named: UServiceJpgList[indexPath.row]+".jpg")
            cell2?.facultyEmail.text = USNameList[indexPath.row]
            return cell2!


        default:
            let cell3 = progOfficeCollecView.dequeueReusableCell(withReuseIdentifier: "ProgOffice", for: indexPath) as? facultyCell
            cell3?.facultyPhoto.image = UIImage(named: UServiceJpgList[indexPath.row]+".jpg")
            cell3?.facultyEmail.text = UServiceJpgList[indexPath.row]
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
