//
//  AppDelegate.swift
//  Navigation
//
//  Created by Akmal Astanov on 25.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // init window
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        
        // init tabBarController
        let tabBarController = MainTabBarController()
        
        self.window?.rootViewController = tabBarController
        return true
    }
}

