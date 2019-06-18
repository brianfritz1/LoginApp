//
//  ViewController.swift
//  LoginApp
//
//  Created by Brian Ezequiel Fritz on 14/06/2019.
//  Copyright © 2019 Globant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var phoneTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  var presenter: LoginPresenter!
  override func viewDidLoad() {
    super.viewDidLoad()
    self.presenter = LoginPresenter(delegate: self)
  }
  
  
  @IBAction func signInPressed(_ sender: Any) {
    self.presenter.register(name: nameTextField.text, password: passwordTextField.text, email: emailTextField.text, phoneNumber: phoneTextField.text)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "LoginSuccess" {
      let vc = segue.destination as? LoginSuccessViewController
      vc?.name = nameTextField.text
      vc?.email = emailTextField.text
    }
  }
  
}

extension ViewController: LoginPresenterProtocol {
  func registrationDidFailed(message: String) {
    let alert = UIAlertController(title: "Error on login", message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    self.present(alert,animated: true)
  }
  
  func registrationSuccess() {
    performSegue(withIdentifier: "LoginSuccess", sender: self)
  }

  
  
}

