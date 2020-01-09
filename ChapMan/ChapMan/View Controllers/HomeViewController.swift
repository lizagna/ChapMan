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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
