//
//  LoadProfileInput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: INPUT BOUNDRY

protocol LoadProfileInput: Boundary {
  func loadProfile(requestModel: LoadProfileRequest)
}

// MARK: REQUEST MODEL

struct LoadProfileRequest: RequestModel {
  
}
