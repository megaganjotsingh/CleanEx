//
//  AutoLoginInteractor.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

class AutoLoginInteractor: Interactor {
  typealias RequestModelType = AutologinRequest

  // MARK: PRIVATE ATTRIBUTES

  private let output: AutoLoginOutput
  private let sessionPersistantService: SessionPersistantService

  // MARK: INITIALIZER

  init(output: AutoLoginOutput,
       sessionPersistantService: SessionPersistantService) {

    self.output = output
    self.sessionPersistantService = sessionPersistantService
  }

  // MARK: INTERACTOR

  func execute(requestModel: AutologinRequest) {
    if sessionPersistantService.loadSession() != nil {
      self.output.success(response: AutoLoginResponse())
      return
    }

    self.output.failure(error: .other)
  }
}

extension AutoLoginInteractor: AutologinInput {

  // MARK: AUTOLOGIN INPUT

  func autologin(requestModel: AutologinRequest) {
    self.execute(requestModel: requestModel)
  }
}
