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
        setupGradientBackground()
    }
    
    private func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
