//
//  RegisterInput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: INPUT BOUNDRY

protocol RegisterInput: Boundary {
    func register(requestModel: RegisterRequest)
}

// MARK: REQUEST MODEL

struct RegisterRequest: RequestModel {
    var username: String?
    var password: String?
    var repeatedPassword: String?
}
