//
//  AutologinInput.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: INPUT BOUNDRY

protocol AutologinInput: Boundary {
  func autologin(requestModel: AutologinRequest)
}

// MARK: REQUEST MODEL

struct AutologinRequest: RequestModel {

}
