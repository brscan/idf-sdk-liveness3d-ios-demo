//
//  AppDelegate.swift
//  brscan-demo-selfie-ios
//
//  Created by Alan Soares on 25/08/21.
//

import UIKit
import Pods_brscan_demo_selfie_ios

//let appDelegate = UIApplication.shared.delegate as! AppDelegate

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
//    var deviceOrientation = UIInterfaceOrientationMask.landscape
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        UIFont.loadFonts
        
        if #available(iOS 13.0, *) {
            
        } else {
            self.window = UIWindow(frame: UIScreen.main.bounds)
            let controller = InicialViewController()
            let navigationController = UINavigationController(rootViewController: controller)
            navigationController.isNavigationBarHidden = true
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle
    
    // this method will rotate the controller and every time once we switch our controller it will be called.
//        func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
//            return deviceOrientation;
//        }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

