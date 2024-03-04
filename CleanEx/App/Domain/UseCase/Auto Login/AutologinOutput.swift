//
//  AutoLoginOutput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: OUTPUT BOUNDRY

protocol AutoLoginOutput: Boundary {
  func success(response: AutoLoginResponse)
  func failure(error: AutoLoginError)
}

// MARK: RESPONSE MODELS

struct AutoLoginResponse: ResponseModel {
  
}

enum AutoLoginError: ResponseModel {
  case other
}
