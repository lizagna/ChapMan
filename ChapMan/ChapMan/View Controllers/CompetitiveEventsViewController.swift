//
//  CompetitiveEventsViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/11/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

class CompetitiveEventsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Determines button behavior when tapped
    }
    
    @IBAction func competitionInfoTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/fbla/competitive-events/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func competitionSignUpTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLScBmDe_3F4yGdTQ0xPbxOJkTCRT0-x5nr1jE16rB28u-po_dg/viewform")! as URL, options: [:], completionHandler: nil)
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
