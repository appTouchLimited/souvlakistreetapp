//
//  LeftSideViewControllerNew.swift
//  Souvlaki 1.0
//
//  Created by DJL on 12/08/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit

class LeftSideViewControllerNew: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var menuItems:[String] = ["Follow us", "Contact us", "Share our app", "Home"];

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
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
    }
    
    
    
    //MMDRAWER CODE
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return menuItems.count;
        
    }

    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var leftMenuCell = tableView.dequeueReusableCell(withIdentifier: "LeftMenuCell", for: indexPath) as! LeftMenuTableViewCell
        
        leftMenuCell.menuItemLabel.text = menuItems[indexPath.row]
        
        return leftMenuCell;
        
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        switch(indexPath.row)
        {
        case 0:
            var centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "FollowUsViewController") as! FollowUsViewController
            var centerNavController = UINavigationController(rootViewController: centerViewController)
            var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.drawerContainer!.centerViewController = centerNavController
            appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            
            break;
        case 1:
            var centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "ContactUsViewController") as! ContactUsViewController
            var centerNavController = UINavigationController(rootViewController: centerViewController)
            var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.drawerContainer!.centerViewController = centerNavController
            appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
        case 2:
            var centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "ShareAppViewController") as! ShareAppViewController
            var centerNavController = UINavigationController(rootViewController: centerViewController)
            var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.drawerContainer!.centerViewController = centerNavController
            appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            
        case 3:

   
            
            var centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
            var centerNavController = UINavigationController(rootViewController: centerViewController)
            var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate

            appDelegate.drawerContainer!.centerViewController = centerNavController
            appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
        default:
            print("\(menuItems[indexPath.row]) is selected");
        }
        
    }
    
    
    
}
