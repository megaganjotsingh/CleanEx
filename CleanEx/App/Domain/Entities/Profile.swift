//
//  Profile.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

class Profile {

  // MARK: ATTRIBUTES

  let identifier: Int
  let firstName: String
  let lastName: String

  // MARK: INITIALIZER

  init(identifier: Int, firstName: String, lastName: String) {
    self.identifier = identifier
    self.firstName = firstName
    self.lastName = lastName
  }
}
