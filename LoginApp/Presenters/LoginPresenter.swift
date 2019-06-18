//
//  LoginPresenter.swift
//  LoginApp
//
//  Created by Brian Ezequiel Fritz on 14/06/2019.
//  Copyright © 2019 Globant. All rights reserved.
//

import Foundation


class LoginPresenter {
  var delegate: LoginPresenterProtocol!
  
  init(delegate: LoginPresenterProtocol) {
    self.delegate = delegate
  }
  
  func register(name: String!,password: String!, email: String!, phoneNumber: String!){
    if (email == nil || email.count == 0){
      delegate.registrationDidFailed(message: "Email can't be empty")
      return
    }
    if (name == nil || name.count == 0){
      self.delegate.registrationDidFailed(message: "Name can't be empty")
      return
    }
    if (password == nil || password == "" || password.count == 0){
      self.delegate.registrationDidFailed(message: "Password can't be blank")
      return
    }
    self.delegate.registrationSuccess()
  }
  
  
}
