//
//  AppDelegate.swift
//  Souvlaki 1.0
//
//  Created by DJL on 02/07/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit
import Firebase
import FirebaseMessaging
import UserNotifications
import ViewAnimator

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var drawerContainer: MMDrawerController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()

        //MMDRAWER calling function
        buildNavigationDrawerInterface()
        
   
        // this sets colour of navigation bar - there was an issue with the colour being lighter than it should but below fixed it. the tintColor is the color of the icons, menu on the nav bar.
        UINavigationBar.appearance().barTintColor = UIColor.souvlakiBlue
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        
 


        
 //   addNavBarImage()

        //PUSH NOTIFICATION
        registerForPushNotifications()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    //PUSH NOTIFICATION
    func registerForPushNotifications() {
        UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
            (granted, error) in
            print("Permission granted: \(granted)")
            // 1. Check if permission granted
            guard granted else { return }
            // 2. Attempt registration for remote notifications on the main thread
            DispatchQueue.main.async {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }
    }
    
    //PUSH NOTIFICATION
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // 1. Convert device token to string
        let tokenParts = deviceToken.map { data -> String in
            return String(format: "%02.2hhx", data)
        }
        let token = tokenParts.joined()
        // 2. Print device token to use for PNs payloads
        print("Device Token: \(token)")
    }
    
    //PUSH NOTIFICATION
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        // 1. Print out error if PNs registration not successful
        print("Failed to register for remote notifications with error: \(error)")
    }
    
    //MMDrawer function
    func buildNavigationDrawerInterface()
    {
        
        //instanciate main.storyboard
        let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        //create view controllers
        let mainPage:TabBarViewController = mainStoryBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        
        
        //REMOVE THE 'New' PART OF ALL 3 BELOW AND GET FIRST LEFT SIDE CONTROLLER BACK
        let leftSideMenu:LeftSideViewControllerNew = mainStoryBoard.instantiateViewController(withIdentifier: "LeftSideViewControllerNew") as! LeftSideViewControllerNew
        

    
         //wrap into navigation controller
        let leftSideMenuNav = UINavigationController(rootViewController: leftSideMenu)
        
        //create MMDrawerController
        drawerContainer = MMDrawerController(center: mainPage, leftDrawerViewController: leftSideMenuNav)
        
        drawerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.panningCenterView
        drawerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.panningCenterView
        
        //assign MMDrawerController to our windows root viewcontroller
        window?.rootViewController = drawerContainer
        window?.makeKeyAndVisible()
        
    }
    



}

