//
//  ViewController.swift
//  Twitter Clone
//
//  Created by admin on 19.09.2022.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        
        // this is for stacking the view controllers
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: NotificationsViewController())
        let vc4 = UINavigationController(rootViewController: DirectMessagesViewController())
        
        
        
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        

        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc2.tabBarItem.selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")

        
        vc3.tabBarItem.image = UIImage(systemName: "bell")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")

        
        vc4.tabBarItem.image = UIImage(systemName: "envelope")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")
        
        // this sets the view controllers to the tabbar
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)

    }


}

