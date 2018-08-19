//
//  LeftSideViewController.swift
//  Souvlaki 1.0
//
//  Created by DJL on 05/07/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit



class LeftSideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.souvlakiBlue
        // Do any additional setup after loading the view.
    }


    
    //SET LOGO TO NAV BAR
    override func viewDidAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
//        let image = #imageLiteral(resourceName: "Souvlaki_Street_icon")
//        let imageView = UIImageView(image: image)
//
//        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 88, height: 88))
//        imageView.frame = titleView.bounds
//
//        imageView.contentMode = UIViewContentMode.scaleAspectFill
//
//        nav?.barStyle = UIBarStyle.black
//        nav?.tintColor = UIColor.white
//
//        titleView.addSubview(imageView)
//        self.navigationItem.titleView = titleView
        
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        
    }
    //crap
//    @IBAction func followUs_tapped(_ sender: UIButton) {
//
//        let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let DVC = mainStoryBoard.instantiateInitialViewController(withIdentifer: "SideFirstViewController") as! SideFirstViewController
//        self.navigationController?.pushViewController(DVC, animated: true)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
