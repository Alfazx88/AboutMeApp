//
//  BiografyViewController.swift
//  AboutMeApp
//
//  Created by Giovanni on 06.05.2024.
//

import UIKit

final class BiografyViewController: UIViewController {
    var user: User?

    @IBOutlet var bioTitleLabel: UILabel!
    @IBOutlet var userBiografyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bioTitleLabel.text = "\(user?.person.name ?? "") \(user?.person.familyName ?? "") Bio"
        userBiografyLabel.text = user?.person.bio

        // Do any additional setup after loading the view.
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
