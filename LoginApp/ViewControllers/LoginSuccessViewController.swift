//
//  LoginSuccessViewController.swift
//  LoginApp
//
//  Created by Brian Ezequiel Fritz on 14/06/2019.
//  Copyright © 2019 Globant. All rights reserved.
//

import UIKit

class LoginSuccessViewController: UIViewController {

  var name: String?
  var email: String?
  var presenter: LoginSuccessPresenter!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = LoginSuccessPresenter(delegate: self)
        self.presenter.saveData(name: name!, email: email!)
        // Do any additional setup after loading the view.
    }
    


}

extension LoginSuccessViewController: LoginSuccessProtocol {
  
  func saveDataSuccess(){
    print("Data successfully saved")
  }
  
}
