//
//  ContainerController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/9/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    // properties
    var menuController: UIViewController!
    
    //init
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //handlers
    func configureHomeViewController() {
        let homeController = HomeViewController()
        let controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
    }
    
    /*
    func configureMenuViewController() {
        if menuController == nil {
            menuController = MenuViewController()
            //menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did add menu controller")
        }
    } */
 








}
