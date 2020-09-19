//
//  ContactUsViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/11/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

class ContactUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //checks whether a button is tapped or not and determins button behavior
    
    @IBAction func instagramTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.instagram.com/aliefkerrfbla/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func twitterTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://twitter.com/AliefKerrFBLA")! as URL, options: [:], completionHandler: nil)
    }
    

}
