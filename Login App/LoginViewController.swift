//
//  ViewController.swift
//  Login App
//
//  Created by Andrew on 09.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var forgetNameButton: UIButton!
    @IBOutlet var forgotPassButton: UIButton!
    
    var login = "admin"
    var password = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.autocorrectionType = .no
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is WelcomeViewController else { return }
        if userNameTF.text != login || passwordTF.text != password {
            showAlert(title: "Error", message: "Login or password is wrong")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotNameAction() {
        showAlert(title: "Forgot User Name?",
                  message: "Your User Name is \(login)")
    }
    
    
    @IBAction func forgotPassAction() {
        showAlert(title: "Forgot User Name?",
                  message: "Your User Name is \(login)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    guard segue.source is WelcomeViewController else { return }
    passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let confrimAction = UIAlertAction(title: "Confirm", style: .default)
        alert.addAction(confrimAction)
        present(alert, animated: true)
    }
}
