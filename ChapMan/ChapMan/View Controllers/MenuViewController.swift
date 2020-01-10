//
//  MenuViewController.swift
//  ChapMan
//
//  Created by Elizabeth Luu on 1/8/20.
//  Copyright © 2020 Elizabeth Luu. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case home
    case about 
    case contact
    case QA
    case links 
    
}

class MenuViewController: UITableViewController {

    var didTapMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let MenuType = MenuType(rawValue: indexPath.row ) else { return }
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(MenuType)")
            self?.didTapMenuType?(MenuType)
        }
    }
}
