//
//  SecondViewController.swift
//  Souvlaki 1.0
//
//  Created by DJL on 07/08/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//


import UIKit
import Firebase
import FirebaseMessaging
import ViewAnimator

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        //REMOTE CONFIG
       // let welcomeMessageConfigKey = "welcome_message"
        //let welcomeMessageCapsConfigKey = "welcome_message_caps"
       // let loadingPhraseConfigKey = "loading_phrase"
        
        //var remoteConfig: RemoteConfig!

            //REMOTE CONFIG
           // remoteConfig = RemoteConfig.remoteConfig()
           // remoteConfig.configSettings = RemoteConfigSettings(developerModeEnabled: true)
           // remoteConfig.setDefaults(fromPlist: "RemoteConfigDefaults")
         
            //REMOTE CONFIG
            //fetchConfig()
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
    

    
    
    //REMOTE CONFIG
//    func fetchConfig() {
//        labelremoteconfig.text = remoteConfig[loadingPhraseConfigKey].stringValue
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
//    //REMOTE CONFIG
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
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//
    //left menu tab - remember to add fresh for each viewcontroller
    @IBAction func leftMenuTapped(_ sender: AnyObject) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.drawerContainer?.toggle(MMDrawerSide.left, animated: true, completion: nil)
    
    }
    
    
}

