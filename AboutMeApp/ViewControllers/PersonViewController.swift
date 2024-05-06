//
//  personViewController.swift
//  AboutMeApp
//
//  Created by Giovanni on 05.05.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Person"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let biographyVC = segue.destination as? BiografyViewController {
            biographyVC.user = user
        }
    }
}
