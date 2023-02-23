//
//  ProfileViewController.swift
//  Tech Social Media App
//
//  Created by Zane Jones on 2/22/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var factLabel1: UILabel!
    @IBOutlet var factLabel2: UILabel!
    @IBOutlet var postStackView: UIStackView!
    @IBOutlet var factLabel3: UILabel!
    
    var allLabels = [UILabel]()
    var darkMode = false;
    override func viewDidLoad() {
        super.viewDidLoad()
        allLabels = [nameLabel, factLabel1, factLabel2, factLabel3]
    }
    
    @IBAction func toggleDarkMode(_ sender: Any) {
        darkMode = darkMode ? false : true
        for i in allLabels {
            i.textColor = darkMode ? UIColor.white : UIColor.black
        }
        view.backgroundColor = darkMode ? UIColor.black : UIColor.white
        
    }
    
}
