//
//  FollowUsViewController.swift
//  FirebaseCore
//
//  Created by DJL on 12/08/2018.
//

import UIKit

class FollowUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//SET TOP MENU TAB COLOUR AND ICON
    override func viewDidAppear(_ animated: Bool) {
        _ = navigationController!
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
    
    @IBAction func leftMenuTapped(_ sender: AnyObject) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.drawerContainer?.toggle(MMDrawerSide.left, animated: true, completion: nil)

    }
    
}
