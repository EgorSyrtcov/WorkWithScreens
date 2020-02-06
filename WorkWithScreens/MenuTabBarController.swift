//
//  MenuTabBarController.swift
//  WorkWithScreens
//
//  Created by Egor Syrtcov on 2/6/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class MenuTabBarController: UITabBarController, StoryboardInitializable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [createController(title: "NewVC", imageName: "news", vc: NewsViewController()), createController(title: "EmailVC", imageName: "mail", vc: EmailViewController())]
        
    }
    
    private func createController(title: String, imageName:String, vc: UIViewController) -> UINavigationController {
        let recentVc = UINavigationController(rootViewController: vc)
        recentVc.tabBarItem.title = title
        recentVc.tabBarItem.image = UIImage(named: imageName)
        return recentVc
    }
    
}
