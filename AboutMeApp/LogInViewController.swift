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
    private let userName = "User"
    private let password = "Password"

    // MARK: - Initial View Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = "User"
        passwordTF.text = "Password"
    }
    
    // MARK: - Segue control, keyboard handling
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                title: "Wrong login/password",
                message: "Please enter your name",
                textField: passwordTF
            )
            return false
        }
        return true
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loggedVC = segue.destination as? LogedInViewController else { return }
        loggedVC.username = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    // MARK: - IB Actions
    @IBAction func remindButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "No worries", message: "Login is: \(userName). 🤠")
        : showAlert(title: "No worries", message: "Password is: \(password). 🤠")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
            userNameTF.text = ""
            passwordTF.text = ""
    }
    
    
    
    // MARK: - Private Methods
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}




