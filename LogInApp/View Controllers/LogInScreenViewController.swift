//
//  ViewController.swift
//  LogInApp
//
//  Created by Иван on 8/29/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class LogInScreenViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tapBarController = segue.destination as? UITabBarController else { return }
        guard let aboutUserVC = tapBarController.viewControllers?.first as? AboutUserViewController else { return }
        aboutUserVC.helloLabelTemp = usernameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func logInTouch(_ sender: UIButton) {
        if usernameTextField.text == userOne.userName,
            passwordTextField.text == userOne.password {
            performSegue(withIdentifier: "aboutUserSegue", sender: nil)
        } else {
            let alertController = UIAlertController(title: "👿",
                                                    message: "Неправильный логин или пароль",
                                                    preferredStyle: .alert)
            let alertOkAction = UIAlertAction(title: "Ok",
                                              style: .default,
                                              handler: nil)
            alertController.addAction(alertOkAction)
            present(alertController, animated: true, completion: nil)
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUserNameTouch(_ sender: Any) {
        let alertController = UIAlertController(title: "Ой!",
                                                message: "Ваш логин - \(userOne.userName)",
                                                preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Ok",
                                          style: .default,
                                          handler: nil)
        alertController.addAction(alertOkAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordTouch(_ sender: Any) {
        let alertController = UIAlertController(title: "Ай!",
                                                message: "Ваш пароль - \(userOne.password)",
                                                preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Ok",
                                          style: .default,
                                          handler: nil)
        alertController.addAction(alertOkAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func unwindSegueForMainScreen(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTextField {
            self.usernameTextField.resignFirstResponder()
            self.passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            self.passwordTextField.resignFirstResponder()
            logInTouch(logInButton)
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}
