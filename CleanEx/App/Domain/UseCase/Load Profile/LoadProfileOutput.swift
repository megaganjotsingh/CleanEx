//
//  LoadProfileOutput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: OUTPUT BOUNDRY

protocol LoadProfileOutput: Boundary {
  func success(response: LoadProfileResponse)
  func failure(error: LoadProfileError)
}

// MARK: RESPONSE MODEL

struct LoadProfileResponse: ResponseModel {
  let firstName: String?
  let lastName: String?
}

enum LoadProfileError: ResponseModel {
  case unauthorized
  case other
}
