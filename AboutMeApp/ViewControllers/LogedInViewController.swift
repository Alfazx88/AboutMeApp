//
//  LogedInViewController.swift
//  AboutMeApp
//
//  Created by Giovanni on 24.04.2024.
//

import UIKit

final class LogedInViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var introductionLabel: UILabel!
    @IBOutlet var userName: UILabel!
    
    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, Aleksey!"
        introductionLabel.text = "My name is \(user?.person.name ?? "")."
    }
}
