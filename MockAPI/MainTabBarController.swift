//
//  MainTabBarController.swift
//  MockAPI
//
//  Created by Jameel Shehadeh on 21/02/2023.
//

import UIKit

class MainTabBarController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewControllers()
    }
    
    func prepareViewControllers(){
        
        let usersVC = UsersViewController()
        
        usersVC.tabBarItem = UITabBarItem(title: "users", image: UIImage(systemName: "person"), tag: 0)
        let usersNavVC = UINavigationController(rootViewController: usersVC)
        
        
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.backgroundColor = UIColor.systemBackground
        
        let titleAttribute = [NSAttributedString.Key.foregroundColor: UIColor.label]
        navBarAppearance.titleTextAttributes = titleAttribute
                
        usersNavVC.navigationBar.standardAppearance = navBarAppearance
        usersNavVC.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        
        let tabBarApperance = UITabBarAppearance()
        
        tabBarApperance.configureWithOpaqueBackground()
        tabBarApperance.backgroundColor = UIColor.systemBackground
        
        self.tabBar.tintColor = .label
        self.tabBar.standardAppearance = tabBarApperance
        self.tabBar.scrollEdgeAppearance = tabBarApperance
        
        
        let postsVC = PostsViewController()
        postsVC.tabBarItem = UITabBarItem(title: "posts", image: UIImage(systemName: "square.fill.text.grid.1x2"), tag: 1)
        
        self.addChild(usersNavVC)
        self.addChild(postsVC)
        
    }
    
}
