//
//  LogedInViewController.swift
//  AboutMeApp
//
//  Created by Giovanni on 24.04.2024.
//

import UIKit

final class LogedInViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(username!)!"
    }
     
    
}
