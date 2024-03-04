//
//  LogoutOutput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: OUTPUT BOUNDRY

protocol LogoutOutput: Boundary {
  func success(response: LogoutResponse)
  func failure(error: LoadProfileError)
}

// MARK: RESPONSE MODEL

struct LogoutResponse: ResponseModel {

}

enum LogoutError: ResponseModel {
  case other
}
