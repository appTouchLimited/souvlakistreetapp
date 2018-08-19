//
//  ThirdViewController.swift
//  Souvlaki 1.0
//
//  Created by DJL on 07/08/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit
import Firebase
import FirebaseMessaging
import ViewAnimator

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //SET LOGO TO NAV BAR
    override func viewDidAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        let image = #imageLiteral(resourceName: "souvlaki_main_logo_cropped_574_376")
        let imageView = UIImageView(image: image)
        
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        imageView.frame = titleView.bounds
        
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        
        titleView.addSubview(imageView)
        self.navigationItem.titleView = titleView
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //left menu tab - remember to add fresh for each viewcontroller
    @IBAction func leftMenuTapped(_ sender: AnyObject) {
       let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appDelegate.drawerContainer?.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }
    
}
