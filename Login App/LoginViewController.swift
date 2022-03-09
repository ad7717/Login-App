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
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is WelcomeViewController else { return }
        if userNameTF.text != login || passwordTF.text != password {
            showAlert(title: "Error", message: "Login or password is wrong")
            passwordTF.text = ""
        }
    }
    
    
    
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//    }
    
    @IBAction func forgotNameAction() {
        showAlert(title: "Forgot User Name?",
                  message: "Your User Name is \(login)")
    }
    
    
    @IBAction func forgotPassAction() {
        showAlert(title: "Forgot User Name?",
                  message: "Your User Name is \(login)")
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
