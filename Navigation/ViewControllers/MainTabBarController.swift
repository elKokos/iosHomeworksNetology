//
//  MainTabBarController.swift
//  Navigation
//
//  Created by Akmal Astanov on 15.09.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = .black
        tabBar.tintColor = .red
        
        viewControllers = setupNavigationControllers()
    }
    
    private func setupNavigationControllers() -> [UIViewController] {
        
        let feedViewController = FeedViewController()
        let profileViewController = ProfileViewController()
        
        feedViewController.title = "Feed"
        profileViewController.title = "Profile"
        
        let feedNavController = UINavigationController(rootViewController: feedViewController)
        let profileNavController = UINavigationController(rootViewController:profileViewController)
        
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().tintColor = .red
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        feedNavController.tabBarItem.image = UIImage(systemName: "house")
        feedNavController.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        profileNavController.tabBarItem.image = UIImage(systemName: "person")
        profileNavController.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        return [feedNavController, profileNavController]
    }
    
}
