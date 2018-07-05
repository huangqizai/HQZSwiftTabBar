//
//  BaseTabBarController.swift
//  kinema-swift
//
//  Created by huangqizai on 2018/7/3.
//  Copyright © 2018年 FYCK. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oneVC = CinemasViewController()
        let twoVC = TaskViewController()
        let threeVC = MineViewController()
        let oneNav = UINavigationController(rootViewController: oneVC)
//        oneNav.navigationController?.navigationItem.title = "你好"
        let twoNav = UINavigationController(rootViewController: twoVC)
        let threeNav = UINavigationController(rootViewController: threeVC)
        let oneTabbarItem = UITabBarItem(title: "片库", image: (Public .getImgView("icon_movie_gray")) , selectedImage: (Public .getImgView("icon_movie_blue")))
        let towTabbarItem = UITabBarItem(title: "任务", image: (Public .getImgView("icon_task_gray")) , selectedImage: (Public .getImgView("icon_task_blue")))
        let threeTabbarItem = UITabBarItem(title: "我的", image: (Public .getImgView("icon_mine_gray")) , selectedImage: (Public .getImgView("icon_mine_blue")))
        oneNav.tabBarItem = oneTabbarItem;
        twoNav.tabBarItem = towTabbarItem;
        threeNav.tabBarItem = threeTabbarItem;
        self.tabBar.tintColor = UIColor.orange
        self.viewControllers = [oneNav,twoNav,threeNav];
        self.tabBar.isTranslucent = false
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
