//
//  LogInViewController.swift
//  AboutMeApp
//
//  Created by Giovanni on 23.04.2024.
//

import UIKit

final class LogInViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Username, password
    private let userName: String = "1"
    private let password: String = "1"

    // MARK: - Segue control, keyboard handling
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let loggedVC = segue.destination as? LogedInViewController
        loggedVC?.username = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK: - IB Actions
    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                withTitle: "Wrong login/password",
                andMessage: "Please enter your name"
            )
            return
        }
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(
            withTitle: "No worries",
            andMessage: "Login is '1' 👀"
        )
        return
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(
            withTitle: "No worries",
            andMessage: "Password is '1' 👀"
        )
        return
    }
    
    @IBAction func unwind(
        for unwindSegue: LogedInViewController,
        towards subsequentVC: LogInViewController) {
            userNameTF.text = nil
            passwordTF.text = nil
    }
    
    
    
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in      self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}




