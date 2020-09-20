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
    
    let pdfTitle = "Tomorrows Business Leaders"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
        
        // sets backgtound color to white 
        
        view.backgroundColor = .white
        
    }
    
    //determines how buttons will look
    
    func setUpElements() {
        Utilities.styleFilledButton(calendarButton)
        Utilities.styleFilledButton(officersButton)
        Utilities.styleFilledButton(competitiveEventsButton)
        Utilities.styleFilledButton(exploreButton)
    }
    
    //checks whether a button is tapped or not and determins button behavior
    
    @IBAction func competitionTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/fbla/competitive-events")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func competitionSignUpTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLScBmDe_3F4yGdTQ0xPbxOJkTCRT0-x5nr1jE16rB28u-po_dg/viewform")! as URL, options: [:], completionHandler: nil)
    }
    

    @IBAction func checkInButtonTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSeeHcTTuE6UPEzg97SVnXHcybbCJqcSOsEVYl2K2k45k5r_zQ/viewform")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func reportABugButtonTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSdpwpFVjogQIRI0m1FiokINjc-1KCM9WRNgMYU5b9rEUHbT1w/viewform")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func calendarButtonTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://calendar.google.com/calendar?cid=bGc3aGNoOGUzNXNpa3JzNWVwMzlwcW5mcjhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func exploreTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://drive.google.com/file/d/1625Q1R1RcispOzD81PE2XnRuKLdr2aYU/view")! as URL, options: [:], completionHandler: nil)
    }
    
    
    
}



