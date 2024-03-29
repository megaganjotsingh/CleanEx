//
//  LogoutInteractor.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

class LogoutInteractor: Interactor {
  typealias RequestModelType = LogoutRequest

  // MARK: PRIVATE ATTRIBUTES

  private let output: LogoutOutput
  private let sessionPersistantService: SessionPersistantService

  // MARK: INITIALIZER

  init(output: LogoutOutput,
       sessionPersistantService: SessionPersistantService) {

    self.output = output
    self.sessionPersistantService = sessionPersistantService
  }

  // MARK: INTERACTOR

  func execute(requestModel: LogoutRequest) {
    self.sessionPersistantService.removeSession()
    let response = LogoutResponse()
    self.output.success(response: response)
  }
}

extension LogoutInteractor: LogoutInput {

  // MARK: LOGIN INPUT

  func logout(requestModel: LogoutRequest) {
    self.execute(requestModel: requestModel)
  }
}
