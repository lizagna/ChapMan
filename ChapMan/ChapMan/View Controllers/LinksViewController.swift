//
//  LinksViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/11/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

class LinksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func nationalWebTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func texasWebTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://fblatx.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func startAChapterTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://fblapbl.wufoo.com/forms/m1a23wfv0e5uhzj/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func chapterManagementTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/fbla/chapter-management-handbook/")! as URL, options: [:], completionHandler: nil)
    }
}
