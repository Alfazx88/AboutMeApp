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
        setupGradientBackground()
    }
     
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
    
    private func setupGradientBackground() {        // чтобы установить градиент - столько кода?🤷‍♂️
          let gradientLayer = CAGradientLayer()
          
          gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
          gradientLayer.locations = [0.0, 1.0]
          
          gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
          gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
          
          gradientLayer.frame = view.bounds
          
          view.layer.insertSublayer(gradientLayer, at: 0)
      }
  
}
