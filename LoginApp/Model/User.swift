//
//  User.swift
//  LoginApp
//
//  Created by Brian Ezequiel Fritz on 14/06/2019.
//  Copyright © 2019 Globant. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
  @objc dynamic var name = ""
  @objc dynamic var email = ""
}
