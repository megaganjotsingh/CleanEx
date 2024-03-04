//
//  LoginService.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

protocol LoginService: Service {
    func login(username: String,
               password: String) async throws -> Session
}

enum LoginServiceError {
  case noInternet
  case other
}
