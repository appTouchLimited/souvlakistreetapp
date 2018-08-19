//
//  FirstViewController.swift
//  Souvlaki 1.0
//
//  Created by DJL on 02/07/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit
import Firebase
import FirebaseMessaging
import ViewAnimator

class FirstViewController: UIViewController {
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
 
        //REMOTE CONFIG
    @IBOutlet weak var labelremoteconfig: UILabel!
    let welcomeMessageConfigKey = "welcome_message"
    let welcomeMessageCapsConfigKey = "welcome_message_caps"
    let loadingPhraseConfigKey = "loading_phrase"
    
    var remoteConfig: RemoteConfig!
    

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //REMOTE CONFIG
        remoteConfig = RemoteConfig.remoteConfig()
        remoteConfig.configSettings = RemoteConfigSettings(developerModeEnabled: true)
        remoteConfig.setDefaults(fromPlist: "RemoteConfigDefaults")

        //REMOTE CONFIG
       // fetchConfig()
//        
//        //scale font custom////////////
//        guard let customFont = UIFont(name: "Gibson-Regular", size: UIFont.labelFontSize) else {
//            fatalError("""
//        Failed to load the "CustomFont-Light" font.
//        Make sure the font file is included in the project and the font name is spelled correctly.
//        """
//            )
//        }
//        label.font = UIFontMetrics.default.scaledFont(for: customFont)
//        label.adjustsFontForContentSizeCategory = true
//        ////////////////
    }
    
    

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

        //location icon colour

        
        
    }
    

    
    
     //REMOTE CONFIG
//    func fetchConfig() {
//       labelremoteconfig.text = remoteConfig[loadingPhraseConfigKey].stringValue
//
//        var expirationDuration = 3600
//        // If your app is using developer mode, expirationDuration is set to 0, so each fetch will
//        // retrieve values from the service.
//        if remoteConfig.configSettings.isDeveloperModeEnabled {
//            expirationDuration = 0
//        }
//
//        // [START fetch_config_with_callback]
//        // TimeInterval is set to expirationDuration here, indicating the next fetch request will use
//        // data fetched from the Remote Config service, rather than cached parameter values, if cached
//        // parameter values are more than expirationDuration seconds old. See Best Practices in the
//        // README for more information.
//        remoteConfig.fetch(withExpirationDuration: TimeInterval(expirationDuration)) { (status, error) -> Void in
//            if status == .success {
//                print("Config fetched!")
//                self.remoteConfig.activateFetched()
//            } else {
//                print("Config not fetched")
//                print("Error: \(error?.localizedDescription ?? "No error available.")")
//            }
//            self.displayWelcome()
//        }
//        // [END fetch_config_with_callback]
//    }
//
//     //REMOTE CONFIG
//    func displayWelcome() {
//        // [START get_config_value]
//        var welcomeMessage = remoteConfig[welcomeMessageConfigKey].stringValue
//        // [END get_config_value]
//
//        if remoteConfig[welcomeMessageCapsConfigKey].boolValue {
//            welcomeMessage = welcomeMessage?.uppercased()
//        }
//        labelremoteconfig.text = welcomeMessage
//    }
//
//    // Display welcome message in all caps if welcome_message_caps is set to true. Otherwise
//    // display welcome message as fetched from welcome_message.
//    @IBAction func handleFetchTouch(_ sender: AnyObject) {
//        fetchConfig()
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //left menu tab
    @IBAction func leftMenuTapped(_ sender: AnyObject) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.drawerContainer?.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }
    
    
//    func addNavBarImage() {
//
//    let navController = navigationController!
//
//    let image = #imageLiteral(resourceName: "Souvlaki_Street_icon")
//    let imageView = UIImageView(image: image)
//
//    let bannerWidth = navController.navigationBar.frame.size.width
//
//    let bannerHeight = navController.navigationBar.frame.size.height
//
//    let bannerX = bannerWidth / 2 - image.size.width / 2
//
//    let bannerY = bannerHeight / 2 - image.size.height / 2
//
//    imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
//
//    imageView.contentMode = .scaleAspectFit
//
//    navigationItem.titleView = imageView
//
//
//
//    }
    
   

}

