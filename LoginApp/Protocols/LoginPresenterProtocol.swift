//
//  LoginPresenterProtocol.swift
//  LoginApp
//
//  Created by Brian Ezequiel Fritz on 14/06/2019.
//  Copyright © 2019 Globant. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol {
  func registrationDidFailed(message: String)
  func registrationSuccess()
}
