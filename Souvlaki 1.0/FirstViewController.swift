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

class FirstViewController: UIViewController {
    
 
    
    @IBOutlet weak var labelremoteconfig: UILabel!
    //REMOTE CONFIG
    let welcomeMessageConfigKey = "welcome_message"
    let welcomeMessageCapsConfigKey = "welcome_message_caps"
    let loadingPhraseConfigKey = "loading_phrase"
    
    var remoteConfig: RemoteConfig!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // [START get_remote_config_instance]
        remoteConfig = RemoteConfig.remoteConfig()
        // [END get_remote_config_instance]
        
        // Create a Remote Config Setting to enable developer mode, which you can use to increase
        // the number of fetches available per hour during development. See Best Practices in the
        // README for more information.
        // [START enable_dev_mode]
        remoteConfig.configSettings = RemoteConfigSettings(developerModeEnabled: true)
        // [END enable_dev_mode]
        
        // Set default Remote Config parameter values. An app uses the in-app default values, and
        // when you need to adjust those defaults, you set an updated value for only the values you
        // want to change in the Firebase console. See Best Practices in the README for more
        // information.
        // [START set_default_values]
        remoteConfig.setDefaults(fromPlist: "RemoteConfigDefaults")
        // [END set_default_values]
        
        fetchConfig()
        
    }
    
     //REMOTE CONFIG
    func fetchConfig() {
        labelremoteconfig.text = remoteConfig[loadingPhraseConfigKey].stringValue
        
        var expirationDuration = 3600
        // If your app is using developer mode, expirationDuration is set to 0, so each fetch will
        // retrieve values from the service.
        if remoteConfig.configSettings.isDeveloperModeEnabled {
            expirationDuration = 0
        }
        
        // [START fetch_config_with_callback]
        // TimeInterval is set to expirationDuration here, indicating the next fetch request will use
        // data fetched from the Remote Config service, rather than cached parameter values, if cached
        // parameter values are more than expirationDuration seconds old. See Best Practices in the
        // README for more information.
        remoteConfig.fetch(withExpirationDuration: TimeInterval(expirationDuration)) { (status, error) -> Void in
            if status == .success {
                print("Config fetched!")
                self.remoteConfig.activateFetched()
            } else {
                print("Config not fetched")
                print("Error: \(error?.localizedDescription ?? "No error available.")")
            }
            self.displayWelcome()
        }
        // [END fetch_config_with_callback]
    }
    
     //REMOTE CONFIG
    func displayWelcome() {
        // [START get_config_value]
        var welcomeMessage = remoteConfig[welcomeMessageConfigKey].stringValue
        // [END get_config_value]
        
        if remoteConfig[welcomeMessageCapsConfigKey].boolValue {
            welcomeMessage = welcomeMessage?.uppercased()
        }
        labelremoteconfig.text = welcomeMessage
    }
    
    // Display welcome message in all caps if welcome_message_caps is set to true. Otherwise
    // display welcome message as fetched from welcome_message.
    @IBAction func handleFetchTouch(_ sender: AnyObject) {
        fetchConfig()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

