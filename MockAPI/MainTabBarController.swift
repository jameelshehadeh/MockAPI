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
        
        let postsVC = PostsViewController()
        postsVC.tabBarItem = UITabBarItem(title: "posts", image: UIImage(systemName: "square.fill.text.grid.1x2"), tag: 1)
        
        self.addChild(usersVC)
        self.addChild(postsVC)
        
    }
    
}
