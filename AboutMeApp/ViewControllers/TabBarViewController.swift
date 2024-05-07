//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Giovanni on 07.05.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
       
       
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        

    }
    
    private func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.yellow.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
