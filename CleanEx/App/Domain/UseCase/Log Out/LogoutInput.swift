//
//  LogoutInput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: INPUT BOUNDRY

protocol LogoutInput: Boundary {
  func logout(requestModel: LogoutRequest)
}

// MARK: REQUEST MODEL

struct LogoutRequest: RequestModel {

}
