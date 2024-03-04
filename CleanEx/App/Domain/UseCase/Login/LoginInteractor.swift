//
//  LoginInteractor.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

class LoginInteractor: Interactor {
    typealias RequestModelType = LoginRequest
    
    // MARK: PRIVATE ATTRIBUTES
    
    private weak var output: LoginOutput!
    private let loginService: LoginService
    private let sessionPersistantService: SessionPersistantService
    
    // MARK: INITIALIZER
    
    init(output: LoginOutput, loginService: LoginService, sessionPersistantService: SessionPersistantService) {
        self.output = output
        self.loginService = loginService
        self.sessionPersistantService = sessionPersistantService
    }
    
    // MARK: INTERACTOR
    
    @MainActor
    func execute(requestModel: LoginRequest) {
        
        if requestModel.username == nil || requestModel.username!.isEmpty {
            self.output.failure(error: .emptyEmail)
            return
        }
        
        if requestModel.password == nil || requestModel.password!.isEmpty {
            self.output.failure(error: .emptyPassword)
            return
        }
        
        Task {
            do {
                let session = try await self.loginService.login(username: requestModel.username!, password: requestModel.password!)
            } catch let loginError {
                self.output.failure(error: .other)
            }
        }
        
    }
}

extension LoginInteractor: LoginInput {
    
    // MARK: LOGIN INPUT
    
    @MainActor
    func login(requestModel: LoginRequest) {
        self.execute(requestModel: requestModel)
    }
}
