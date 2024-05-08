//
//  personViewController.swift
//  AboutMeApp
//
//  Created by Giovanni on 05.05.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    @IBOutlet var titleNameLabel: UILabel!
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var familyNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var organizationLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleNameLabel.text = "\(user?.person.name ?? "") \(user?.person.familyName ?? "")"
        personImage.image = user?.person.foto
        nameLabel.text = user?.person.name
        familyNameLabel.text = user?.person.familyName
        ageLabel.text = user?.person.age
        professionLabel.text = user?.person.profession
        organizationLabel.text = user?.person.organiation
        personImage.layer.cornerRadius = personImage.bounds.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let biographyVC = segue.destination as? BiografyViewController {
            biographyVC.user = user
        }
    }
}
