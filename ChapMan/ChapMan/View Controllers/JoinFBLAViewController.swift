//
//  JoinFBLAViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/11/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

class JoinFBLAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //checks whether a button is tapped or not and determins button behavior

    @IBAction func registrationButtonTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSceiIURS1li2ndi3tAJdqS8F6ZOmFkTbR4yonWFwdBgwjy9fQ/viewform")! as URL, options: [:], completionHandler: nil)
    }
    

}
