//
//  CustomTabBarController.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 16/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setComponents()
    }
    fileprivate func setComponents() {
        viewControllers = [
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search"),
            createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: UIViewController(), title: "Music", imageName: "apps"),
        ]
    }
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
        let navVC = UINavigationController(rootViewController: viewController)
        navVC.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navVC.tabBarController?.tabBar.tintColor = .blue 
        navVC.tabBarItem.title = title
        navVC.tabBarItem.image = UIImage(named: imageName)
        return navVC
    }
}
