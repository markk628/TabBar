//
//  TabBarController.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupViewControllers()
    }
    
    func setupViewControllers(){
        
        var viewControllersArray = [UIViewController]()
        let images = ["northAmerica", "southAmerica", "europe", "australia", "asia", "Africa"]
        let titles = ["North America", "South America", "Europe", "Australia", "Asia", "Africa"]
        
        for i in 0..<images.count {
            let vc = ContinentVC()
            vc.imageName = images[i]
            vc.title = titles[i]
            let navigationControllers = UINavigationController(rootViewController: vc)
            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "earth"), selectedImage: UIImage(named: "earth"))

            self.tabBar.barTintColor = .black
            self.tabBar.tintColor = .white
            viewControllersArray.append(navigationControllers)
        }

        viewControllers = viewControllersArray
        
//        let northAmericaVC: ContinentVC = {
//            let vc = ContinentVC()
//            vc.imageName = "northAmerica"
//            vc.title = "North America"
//            vc.view.backgroundColor = .blue
//            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
//            vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
//            return vc
//        }()
//
//        let southAmericaVC: ContinentVC = {
//            let vc = ContinentVC()
//            vc.imageName = "southAmerica"
//            vc.title = "South America"
//            vc.view.backgroundColor = .blue
//            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
//            vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
//            return vc
//        }()
//
//        let europeVC: ContinentVC = {
//            let vc = ContinentVC()
//            vc.imageName = "europe"
//            vc.title = "Europe"
//            vc.view.backgroundColor = .blue
//            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
//            vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
//            return vc
//        }()
//
//        let australiaVC: ContinentVC = {
//            let vc = ContinentVC()
//            vc.imageName = "australia"
//            vc.title = "Australia"
//            vc.view.backgroundColor = .blue
//            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
//            vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
//            return vc
//        }()
//
//        let asiaVC: ContinentVC = {
//            let vc = ContinentVC()
//            vc.imageName = "asia"
//            vc.title = "Asia"
//            vc.view.backgroundColor = .blue
//            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
//            vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
//            return vc
//        }()
//
//        let africaVC: ContinentVC = {
//            let vc = ContinentVC()
//            vc.imageName = "africa"
//            vc.title = "Africa"
//            vc.view.backgroundColor = .blue
//            vc.tabBarItem = UITabBarItem(title: vc.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
//            vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
//            return vc
//        }()
//
//        let northAmerica = UINavigationController(rootViewController: northAmericaVC)
//        let southAmerica = UINavigationController(rootViewController: southAmericaVC)
//        let europe = UINavigationController(rootViewController: europeVC)
//        let australia = UINavigationController(rootViewController: australiaVC)
//        let asia = UINavigationController(rootViewController: asiaVC)
//        let africa = UINavigationController(rootViewController: africaVC)
//
//        viewControllers = [northAmerica, southAmerica, europe, australia, asia, africa]
//        
//        self.tabBar.barTintColor = .black
//        self.tabBar.tintColor = .white
    }
}
