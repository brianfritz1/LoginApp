//
//  LoginSuccessPresenter.swift
//  LoginApp
//
//  Created by Brian Ezequiel Fritz on 14/06/2019.
//  Copyright © 2019 Globant. All rights reserved.
//

import Foundation
import RealmSwift

class LoginSuccessPresenter {
  let realm = try! Realm()
  var delegate: LoginSuccessProtocol!
  
  init(delegate: LoginSuccessProtocol) {
    self.delegate = delegate
  }
  
  func saveData(name: String, email: String) {
    print(Realm.Configuration.defaultConfiguration.fileURL)
    let user = User()
    user.name = name
    user.email = email
    try! realm.write {
      self.realm.add(user)
      self.delegate.saveDataSuccess()
    }
  }
  
  
  
  
  
  
  
}
