//
//  MenuViewController.swift
//  HKUApp
//
//  Created by Captwang on 7/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit


protocol SlideMenuDelegate {
    func slideMenuItemSelectedAtIndex(_ index: Int32)

}

class MenuViewController: UIViewController {

    var btnMenu : UIButton!
    var delegate: SlideMenuDelegate?
    
    @IBOutlet weak var btnCloseMenuOverlay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func btnCloseTapped(_ button: UIButton) {
        btnMenu.tag = 0
        
        if (self.delegate != nil) {
            var index = Int32(button.tag)
            if(button == self.btnCloseMenuOverlay){
                index = -1
            }
            delegate?.slideMenuItemSelectedAtIndex(index)
        }
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            self.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParent()
        })
        
    }
    
    
    @IBAction func btnHomeTapped(_ sender: Any) {
        
        let mainStoreboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DVC = mainStoreboard.instantiateViewController(withIdentifier: "HomeViewController")as! HomeViewController
        self.navigationController?.pushViewController(DVC, animated: true)
        
        
        
    }
    
    @IBAction func btnMapTapped(_ sender: Any) {
        let mainStoreboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DVC = mainStoreboard.instantiateViewController(withIdentifier: "MapViewController")as! MapViewController
        self.navigationController?.pushViewController(DVC, animated: true)
        
    }
    
    @IBAction func btnAboutTapped(_ sender: Any) {
        let mainStoreboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DVC = mainStoreboard.instantiateViewController(withIdentifier: "DetailViewController")as! DetailViewController
        self.navigationController?.pushViewController(DVC, animated: true)
        
    }
    
    @IBAction func btnAdminTapped(_ sender: Any) {
        let mainStoreboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DVC = mainStoreboard.instantiateViewController(withIdentifier: "adminVC")as! adminVC
        
        self.navigationController?.pushViewController(DVC, animated: true)
    }
    
    @IBAction func btnCurrTapped(_ sender: Any) {
        let mainStoreboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DVC = mainStoreboard.instantiateViewController(withIdentifier: "CurriVC")as! CurriVC
        
        self.navigationController?.pushViewController(DVC, animated: true)
        
    }
 
    @IBAction func btnGraAluTapped(_ sender: Any) {
        let mainStoreboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DVC = mainStoreboard.instantiateViewController(withIdentifier: "GradAluVC")as! GradAluVC
        
        self.navigationController?.pushViewController(DVC, animated: true)
    }
    
}
