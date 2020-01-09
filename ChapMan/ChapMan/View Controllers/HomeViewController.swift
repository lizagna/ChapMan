//
//  HomeViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/4/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var calendarButton: UIButton!
    @IBOutlet weak var officersButton: UIButton!
    @IBOutlet weak var competitiveEventsButton: UIButton!
    @IBOutlet weak var exploreButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    let transition = SlideInTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func setUpElements() {
        Utilities.styleFilledButton(calendarButton)
        Utilities.styleFilledButton(officersButton)
        Utilities.styleFilledButton(competitiveEventsButton)
        Utilities.styleFilledButton(exploreButton)
    }
    
    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(identifier: "MenuViewController") as? MenuViewController else { return }
        menuViewController.didTapMenuType = { MenuType in
            self.transitionToNew(MenuType)
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
    
    func transitionToNew(_ menuType: MenuType) {
        let title = String(describing: menuType).capitalized
        self.title = title
    }
    
}

extension HomeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false 
        return transition
    }
}
