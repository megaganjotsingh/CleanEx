//
//  LoginInput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: INPUT BOUNDRY

protocol LoginInput: Boundary {
    func login(requestModel: LoginRequest)
}

// MARK: REQUEST MODEL

struct LoginRequest: RequestModel {
    var username: String?
    var password: String?
}
