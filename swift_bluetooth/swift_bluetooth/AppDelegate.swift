//
//  AppDelegate.swift
//  swift_bluetooth
//
//  Created by Alex.Lingjiahua on 2022/6/30.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        let vc = ViewController.init()
        let navigationC = UINavigationController(rootViewController: vc)
        self.window?.rootViewController = navigationC
        self.window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle



}

